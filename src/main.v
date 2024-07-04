module main

import xiusin.very
import config
import routers
import handlers
import xiusin.very.di
import db.pg

fn main() {
	mut app := very.new(port: 8089, app_name: 'v-admin-skeleton')
	app.recover_handler = handlers.recover

	mut pp := very.new_ch_pool[pg.DB](fn () !pg.DB {
		println('初始化数据库连接池')
		return config.get_pg_db()!
	}, 12)

	pp.set_release_failed_fn(fn (mut inst pg.DB) {
		println('释放数据库连接对象')
		inst.close()
	})

	di.inject_on(&pp, 'db_pool')
	routers.register_router(mut app)
	app.run()
}
