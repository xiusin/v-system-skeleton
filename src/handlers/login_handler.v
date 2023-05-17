module handlers

import xiusin.very
import dto
import entities
import services

pub fn login(mut ctx very.Context) ! {
	login_dto := ctx.body_parse[dto.LoginRequestDto]()!
	login_user := services.employee_auth(ctx.db, login_dto)!

	menus := sql ctx.db {
		select from entities.Menu where visible_flag == 1 order by sort
	}!
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
