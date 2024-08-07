module handlers

import xiusin.very
import entities
import rand

const time_format = 'YYYY-MM-DD HH:mm:ss'

@[params]
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

const seed = 'abcdefghijklmnopqrstuvwxyz1234567890_-+=!@#$%^&*()'

@[inline]
pub fn rand_str(strlen int) string {
	return rand.string_from_set(handlers.seed, strlen)
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

pub fn check_entity_exists[T](mut ctx very.Context, wheres ...string) ! {
	if wheres.len == 0 {
		return error('check_entity_exists: 请确定最少包含一个条件')
	}

	mut builder := entities.new_builder(true)
	builder.model[T]()
	builder.limit(1)

	wheres_ := wheres.map(fn (it string) string {
		return '(${it})'
	})

	builder.where(wheres_.join(' AND '))
	if builder.count(mut ctx)! > 0 { // TODO SQL拼错时无异常!
		return error('已经存在相同的数据')
	}
}

pub fn recover(mut ctx very.Context, err IError) ! { // 统一错误处理函数
	ctx.json[Resp[string]](Resp[string]{
		code: 500
		msg: err.str()
	})
}
