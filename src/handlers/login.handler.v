module handlers

import xiusin.very
import dto
import entities
import services
import time
import db.pg

pub fn login(mut ctx very.Context) ! {
	login_dto := ctx.body_parse[dto.LoginRequestDto]()!
	mut record := entities.LoginLog{
		login_ip: ctx.req.client_ip()
		user_agent: ctx.req.get_header(.user_agent)
		login_result: 0
		remark: 'success'
		update_time: time.now().custom_format(time_format)
		create_time: time.now().custom_format(time_format)
	}

	pp := ctx.di[&very.PoolChannel[pg.DB]]('db_pool')!
	mut db := pp.acquire()!
	defer {
		pp.release(db)
	}

	login_user := services.employee_auth(db, login_dto) or {
		record.login_result = 1
		record.remark = '${err}'
		entities.Employee{}
	}

	record.user_id = login_user.id
	record.user_name = login_user.actual_name
	record.user_type = 1

	menus := sql db {
		select from entities.Menu where visible_flag == 1 order by sort
	}!
	sql db {
		insert record into entities.LoginLog
	}!
	if record.login_result == 1 {
		return error(record.remark)
	}

	resp_dto := dto.new_login_response_dto[entities.Employee](login_user, menus)
	resp_success[dto.LoginResponseDto](mut ctx, data: resp_dto)!
}

pub fn logout(mut ctx very.Context) ! {
	resp_success[string](mut ctx, data: '')!
}

pub fn get_login_info(mut ctx very.Context) ! {
	user_id := ctx.value('user_id')! as int
	pp := ctx.di[&very.PoolChannel[pg.DB]]('db_pool')!
	mut db := pp.acquire()!
	defer {
		pp.release(db)
	}
	login_user := services.employee_info(db, user_id, true)!
	menus := sql db {
		select from entities.Menu where visible_flag == 1 order by sort
	}!
	resp_success[dto.LoginResponseDto](mut ctx,
		data: dto.new_login_response_dto[entities.Employee](login_user, menus)
	)!
}
