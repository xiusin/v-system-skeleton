module entities

import math
import db.pg
import xiusin.very

// TODO
// - 支持对象类型自动解析
// - 支持字段过滤
// - 多功能语句构建
@[heap]
pub struct Builder {
mut:
	table      string
	fields     []string
	fields_typ []int
	limit      int
	offset     int
	order_by   []string
	group_by   string
	where      string

	debug bool
}

@[params]
pub struct Paginator[T] {
pub mut:
	empty        bool @[json: 'emptyFlag']
	total        int  @[json: 'total']
	current_page int  @[json: 'pageNum']
	page_size    int  @[json: 'pageSize']
	pages        int  @[json: 'pages']
	items        []T  @[json: 'list']
}

pub fn new_builder(debug ...bool) Builder {
	return Builder{
		debug: debug.len > 0 && debug[0]
	}
}

pub fn (mut info Builder) model[E]() &Builder {
	return info.get_entity_fields[E]()
}

pub fn (mut info Builder) column(columns ...string) &Builder {
	if columns.len == 0 {
		return info
	}
	info.fields = []
	for column in columns {
		if !column.starts_with(info.table + '.') {
			info.fields << info.table + '.' + column
		} else {
			info.fields << column
		}
	}

	return info
}

pub fn (mut info Builder) where(where string) &Builder {
	info.where = where

	return info
}

pub fn (mut info Builder) limit(limit int, offset ...int) &Builder {
	info.limit = limit
	if offset.len > 0 {
		info.offset = offset[0]
	}
	return mut info
}

pub fn (mut info Builder) to_sql(is_count ...bool) string {
	mut build_count_sql := is_count.len > 0 && is_count[0]
	select_field := if !build_count_sql {
		info.fields.join(',')
	} else {
		'COUNT(*) AS total'
	}
	mut query := 'SELECT ${select_field} FROM ${info.table}'

	if info.where.len > 0 {
		query += ' WHERE ${info.where}'
	}

	if !build_count_sql {
		if info.order_by.len > 0 {
			query += ' ORDER BY ' + info.order_by.join(',')
		}
		if info.limit > 0 {
			query += ' OFFSET ${info.offset} LIMIT ${info.limit}'
		}
	} else {
		query += ' LIMIT 1'
	}

	return query
}

pub fn (mut info Builder) row_to_collection[T](items []pg.Row) []T {
	mut collection := []T{}
	for it in items {
		collection << info.row_to_item[T](it)
	}
	return collection
}

pub fn (mut info Builder) row_to_item[T](it pg.Row) T {
	mut item := T{}
	mut idx := 0
	$for field in T.fields {
		if field.is_pub && !field.attrs.contains('build: skip') && !field.attrs.contains('sql: -') {
			val := it.vals[idx]
			fv := val or { '' }

			$if field.typ is string {
				item.$(field.name) = fv.str()
			} $else $if field.typ is int {
				item.$(field.name) = fv.int()
			} $else $if field.typ is i8 {
				item.$(field.name) = fv.i8()
			} $else $if field.typ is i64 {
				item.$(field.name) = fv.i64()
			} $else $if field.typ is i16 {
				item.$(field.name) = fv.i16()
			} $else $if field.typ is bool {
				item.$(field.name) = fv.bool()
			} $else $if field.typ is f64 {
				item.$(field.name) = fv.f64()
			}
			idx++
		}
	}
	return item
}

pub fn (mut info Builder) get_page[T](count int, page int, page_size int, items []pg.Row) !Paginator[T] {
	if page_size == 0 || page == 0 {
		return error('page or page_size is zero')
	}

	collection := info.row_to_collection[T](items)

	pages := math.ceil(f64(count) / f64(page_size))

	return Paginator[T]{
		total: count
		pages: int(pages)
		current_page: page
		page_size: page_size
		items: collection
		empty: items.len == 0
	}
}

pub fn (mut info Builder) order_by(field string) &Builder {
	info.order_by << field

	return info
}

pub fn (mut info Builder) order_by_desc(field string) &Builder {
	if !field.contains(' ') {
		info.order_by << field + ' DESC'
	}

	return info
}

pub fn (mut info Builder) table(table string) &Builder {
	info.table = table
	return info
}

pub fn (mut info Builder) query_raw[T](mut ctx very.Context, query string) ![]T {
	pp := ctx.di[&very.PoolChannel[pg.DB]]('db_pool')!
	mut db := pp.acquire()!
	defer {
		pp.release(db)
	}
	data_items := db.exec(query)!
	return info.row_to_collection[T](data_items)
}

// get_entity_fields 获取table 字段
fn (mut info Builder) get_entity_fields[T]() &Builder {
	$for attr in T.attributes {
		if attr.name == 'table' && attr.has_arg && attr.arg.len != 0 {
			info.table = attr.arg
		}
	}
	$for field in T.fields {
		if field.is_pub && !field.attrs.contains('build: skip') {
			if field.attrs.len == 0 {
				info.fields << info.table + '.' + field.name
			} else {
				for field_attr_item in field.attrs {
					if field_attr_item == 'sql: -' {
						continue
					}
					if field_attr_item.starts_with('sql: ') && !field.attrs.contains('primary') {
						info.fields << info.table + '.' +
							field_attr_item.substr(5, field_attr_item.len)
						break
					} else {
						info.fields << info.table + '.' + field.name
						break
					}
				}
			}
		}
	}
	return info
}

pub fn (mut info Builder) count(mut ctx very.Context, sql_ ...string) !u64 {
	query_sql := if sql_.len == 0 {
		info.to_sql(true)
	} else {
		sql_[0]
	}
	pp := ctx.di[&very.PoolChannel[pg.DB]]('db_pool')!
	mut db := pp.acquire()!
	defer {
		pp.release(db)
	}

	row := db.exec_one(query_sql)!

	if row.vals.len == 0 {
		return 0
	}
	val := row.vals[0]
	dd := val or { '0' } // 太他妈弱智了
	return dd.u64()
}
