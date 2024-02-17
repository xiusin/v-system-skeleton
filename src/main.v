module main

import xiusin.very
import config
import routers
import handlers
import xiusin.very.di

fn main() {
	mut app := very.new(port: 8089, app_name: 'v-admin-skeleton')
	app.recover_handler = handlers.recover

	dump(config.get_mysql_db()!)

	mut db := config.get_db()
	di.inject_on(&db, 'db')
	dump(db)

	routers.register_router(mut app)
	app.run()
}
