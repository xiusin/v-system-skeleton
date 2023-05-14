module oa

import xiusin.very
import db.sqlite
import entities
import time
import dto
import services
import handlers

[group: '/notice']
pub struct Notice {
pub mut:
	db  &sqlite.DB    [inject: 'db'] = unsafe { nil }
	ctx &very.Context = unsafe { nil }
}

['/query'; post]
pub fn (mut app Notice) query() ! {
	paginator := services.base_query[entities.Notice](mut app.ctx, fn [mut app] () ![]string {
		query_dto := app.ctx.body_parse[dto.NoticeRequestDto]()!
		mut where := []string{}

		if query_dto.keywords.len > 0 {
			where << 'title like "%${query_dto.keywords}%"'
		}
		if query_dto.document_number.len > 0 {
			where << 'document_number like "%${query_dto.document_number}%"'
		}
		if query_dto.notice_type_id > 0 {
			where << 'notice_type_id = ${query_dto.notice_type_id}'
		}
		if query_dto.create_time_begin.len > 0 {
			where << "create_time >= '${query_dto.create_time_begin}' and create_time <= '${query_dto.create_time_end} 23:59:59'"
		}
		if query_dto.publish_time_begin.len > 0 {
			where << "publish_time >= '${query_dto.publish_time_begin}' and create_time <= '${query_dto.publish_time_end} 23:59:59'"
		}
		if query_dto.deleted_flag != none {
			flag := if query_dto.deleted_flag? { 1 } else { 0 }
			where << 'deleted_flag = ${flag}'
		}
		return where
	})!

	handlers.resp_success[entities.Paginator[entities.Notice]](mut app.ctx, data: paginator)!
}

['/add'; post]
pub fn (mut app Notice) add() {
}

['/delete/:id'; get]
pub fn (mut app Notice) delete() ! {
	id := app.ctx.param('id').int()
	println(id)
	sql app.ctx.db {
		update entities.Notice set deleted_flag = 1, update_time = time.now().custom_format('YYYY-MM-DD HH:mm:ss')
		where id == id
	}!
	handlers.resp_success[string](mut app.ctx, data: '')!
}

['/getUpdateVO/:id'; get]
pub fn (mut app Notice) info() {
	println('hello index')
	app.ctx.text('hello app index')
}
