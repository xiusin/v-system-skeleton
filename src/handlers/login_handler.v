module handlers

import xiusin.very
import dto
import entities

['/login'; post]
pub fn login(mut ctx very.Context) ! {
	login_dto := ctx.body_parse[dto.LoginRequestDto]()!
	user := sql ctx.db {
		select from entities.Employee where login_name == login_dto.username limit 1
	}!

	if user.len == 0 {
		return error('no user')
	}
	mut login_user := user.first()
	login_user.make_token()

	menus := sql ctx.db {
		select from entities.Menu
	}!
	resp_success[dto.LoginResponseDto](mut ctx,
		data: dto.new_login_response_dto[entities.Employee](login_user, menus)
	)!
}

pub fn get_login_info(mut ctx very.Context) ! {
	user_id := ctx.value('user_id')! as int

	user := sql ctx.db {
		select from entities.Employee where id == user_id limit 1
	}!

	if user.len == 0 {
		return error('no user')
	}
	mut login_user := user.first()
	login_user.make_token()

	menus := sql ctx.db {
		select from entities.Menu
	}!

	// TODO 保存登录日志
	resp_success[dto.LoginResponseDto](mut ctx,
		data: dto.new_login_response_dto[entities.Employee](login_user, menus)
	)!
}
