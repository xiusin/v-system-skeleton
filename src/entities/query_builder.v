module entities

import math

[heap]
struct Builder {
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

[params]
pub struct Paginator[T] {
pub mut:
	empty        bool [json: 'emptyFlag']
	total        int  [json: 'total']
	current_page int  [json: 'pageNum']
	page_size    int  [json: 'pageSize']
	pages        int  [json: 'pages']
	items        []T  [json: 'list']
}

pub fn new_builder(debug ...bool) Builder {
	return Builder{
		debug: debug.len > 0 && debug[0]
	}
}

pub fn (mut info Builder) model[E]() &Builder {
	return info.get_entity_fields[E]()
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
	mut query := 'SELECT ${select_field} from ${info.table}'

	if info.where.len > 0 {
		query += ' WHERE ${info.where}'
	}

	if !build_count_sql {
		if info.order_by.len > 0 {
			query += ' ORDER BY ' + info.order_by.join(',')
		}
	}

	if info.debug {
		println(query)
	}

	return query
}

pub fn (mut info Builder) get_page[T, I](count int, page int, page_size int, items []I) !Paginator[T] {
	if page_size == 0 || page == 0 {
		return error('page or page_size is zero')
	}
	mut collection := []T{} // 遍历数据
	for it in items { // 遍历Sql.Row
		item := T{}
		for idx, sel_field in info.fields {
			$for field in T.fields {
				if sel_field.ends_with('.' + field.name) {
					$if field.typ is string {
						item.$(field.name) = it.vals[idx].str()
					} $else $if field.typ is int {
						item.$(field.name) = it.vals[idx].int()
					} $else $if field.typ is i8 {
						item.$(field.name) = it.vals[idx].i8()
					} $else $if field.typ is i64 {
						item.$(field.name) = it.vals[idx].i64()
					} $else $if field.typ is i16 {
						item.$(field.name) = it.vals[idx].i16()
					} $else $if field.typ is bool {
						item.$(field.name) = it.vals[idx].bool()
					}
				}
			}
		}

		collection << item
	}

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

// get_entity_fields 获取table 字段
fn (mut info Builder) get_entity_fields[E]() &Builder {
	$for attr in E.attributes {
		if attr.name == 'table' && attr.has_arg && attr.arg.len != 0 {
			info.table = attr.arg
		}
	}
	$for field in E.fields {
		if field.is_pub && !field.attrs.contains('build: skip') {
			if field.attrs.len == 0 {
				info.fields << info.table + '.' + field.name
			} else {
				for field_attr_item in field.attrs {
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
