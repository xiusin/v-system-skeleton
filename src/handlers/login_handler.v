module handlers

import xiusin.very
import dto
import entities
import services
import time

pub fn login(mut ctx very.Context) ! {
	login_dto := ctx.body_parse[dto.LoginRequestDto]()!
	mut record := entities.LoginLog{
		login_ip: ctx.client_ip()
		user_agent: ctx.get_header(.user_agent) or { '' }
		login_result: 1
		remark: 'success'
		update_time: time.now().custom_format(time_format)
		create_time: time.now().custom_format(time_format)
	}

	login_user := services.employee_auth(ctx.db, login_dto) or {
		record.login_result = 0
		record.remark = '${err}'
		entities.Employee{}
	}
	println(login_user)
	println(record.remark)
	record.user_id = login_user.id
	record.user_name = login_user.actual_name
	record.user_type = 1

	menus := sql ctx.db {
		select from entities.Menu where visible_flag == 1 order by sort
	}!

	sql ctx.db {
		insert record into entities.LoginLog
	}!

	if record.login_result == 0 {
		return error(record.remark)
	}

	resp_success[dto.LoginResponseDto](mut ctx,
		data: dto.new_login_response_dto[entities.Employee](login_user, menus)
	)!
}

pub fn logout(mut ctx very.Context) ! {
	resp_success[string](mut ctx, data: '')!
}

pub fn get_login_info(mut ctx very.Context) ! {
	user_id := ctx.value('user_id')! as int
	login_user := services.employee_info(ctx.db, user_id, true)!
	menus := sql ctx.db {
		select from entities.Menu where visible_flag == 1 order by sort
	}!
	resp_success[dto.LoginResponseDto](mut ctx,
		data: dto.new_login_response_dto[entities.Employee](login_user, menus)
	)!
}
