module middlewares

import xiusin.very
import entities
import time
import db.sqlite

pub fn access_log(mut ctx very.Context) ! {
	login_user_id := ctx.value('user_id')! as int
	mut log := entities.AccessLog{
		operate_user_id: login_user_id
		operate_user_type: 0
		operate_user_name: ''
		@module: ''
		content: ''
		url: ctx.req.path()
		method: ctx.req.method.str()
		param: ''
		user_agent: ctx.req.get_header(.user_agent)
		success_flag: false
		update_time: time.now().custom_format('YYYY-MM-DD HH:mm:ss')
		create_time: time.now().custom_format('YYYY-MM-DD HH:mm:ss')
	}

	db := ctx.get_db[&sqlite.DB]()!

	defer {
		sql db {
			insert log into entities.AccessLog
		} or {}
	}

	ctx.next() or {
		log.fail_reason = err.str()
		return err
	}


}
