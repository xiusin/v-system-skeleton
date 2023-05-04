module middlewares

import xiusin.very
import time
import entities

pub fn access_log(mut ctx very.Context) ! {
	login_user_id := ctx.value('user_id')! as int
	mut log := entities.AccessLog{
		operate_user_id: login_user_id
		operate_user_type: 0
		operate_user_name: ''
		@module: ''
		content: ''
		url: ctx.path()
		method: ctx.req.method.str()
		param: ''
		ip: ''
		user_agent: ctx.header(.user_agent)
		success_flag: false
		fail_reason: ''
		update_time: time.now().custom_format('YYYY-MM-DD HH:mm:ss')
		create_time: time.now().custom_format('YYYY-MM-DD HH:mm:ss')
	}

	ctx.next()!
	// 访问日志
}
