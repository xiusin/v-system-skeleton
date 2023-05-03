module handlers

import xiusin.very
import entities
import db.sqlite

const time_format = 'YYYY-MM-DD HH:mm:ss'

pub struct Empty {
}

[params]
pub struct Resp[T] {
pub mut:
	code       int
	data       T
	msg        string
	ok         bool
	is_list    bool
	empty_flag bool
	list       []T
	page_num   u32
	page_size  u32
	pages      u32
	total      u32
}

pub fn resp_success[T](mut ctx very.Context, data Resp[T]) ! {
	mut resp := data
	resp.ok = true
	resp.msg = 'success'
	ctx.json[Resp[T]](resp)
}

pub fn resp_error[T](mut ctx very.Context, data Resp[T]) ! {
	mut resp := data
	resp.ok = false
	resp.msg = 'failed'
	ctx.json[Resp[T]](resp)
}

pub fn check_entity_exists[T](mut ctx very.Context, wheres ...string) !bool {
	db := ctx.di.get[sqlite.DB]('db')!
	mut builder := entities.new_builder(true)
	builder.model[T]()
	builder.limit(1)
	builder.where(wheres.join(' AND '))
	count, _ := db.q_int(builder.to_sql(true))
	return count > 0
}
