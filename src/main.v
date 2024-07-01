module main

import xiusin.very
import config
import routers
import handlers
import xiusin.very.di
import db.mysql

fn main() {
	mut app := very.new(port: 8089, app_name: 'v-admin-skeleton')
	app.recover_handler = handlers.recover

	mut pp := very.new_ch_pool[mysql.DB](fn () !mysql.DB {
		println('初始化数据库连接池')
		return config.get_mysql_db()
	}, 12)
	pp.set_release_failed_fn(fn (mut inst mysql.DB) { inst.close() })

	di.inject_on(&pp, 'db_pool')
	routers.register_router(mut app)
	app.run()
}
