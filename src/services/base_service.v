module services

import entities
import xiusin.very
import db.sqlite
import math

// base_query Q 接收参数请求
pub fn base_query[T](mut ctx very.Context, build_where fn () ![]string, orders ...string) !entities.Paginator[T] {
	db := ctx.di.get[sqlite.DB]('db')!
	mut builder := entities.new_builder(true)
	builder.model[T]()
	where := build_where()!
	builder.where(where.join(' AND '))
	mut page_size := ctx.query('page_size').int()
	page_size = math.max[int](page_size, 1)
	page_num := ctx.query('page_num').int()
	builder.limit(page_size, (page_num - 1) * page_size)
	if orders.len == 0 {
		builder.order_by_desc('id')
	} else {
		for order in orders {
			builder.order_by(order)
		}
	}
	count := db.q_int(builder.to_sql(true))
	users, _ := db.exec(builder.to_sql())
	paginator := builder.get_page[T](count, page_num, page_num, users)!
	return paginator
}
