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
		return config.get_mysql_db()
	})

	db := config.get_mysql_db()!
	di.inject_on(&db, 'db')
	di.inject_on(&pp, 'db_pool')

	routers.register_router(mut app)
	app.run()
}
