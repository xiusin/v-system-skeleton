module main

import xiusin.very
import db.pg
import xiusin.very.di
import core.internal
import core.internal.config
import core.package
import core.routers
import handlers

fn main() {
	// 必须在main方法初始化, fack!
	mut pp := very.new_ch_pool[pg.DB](
		factory: fn () !pg.DB {
			return config.get_pg_db()!
		}
		release_failed_fn: fn (mut inst pg.DB) {
			inst.close()
		}
		loop_fn: fn (mut inst pg.DB) ! {
			inst.q_int('select 1')!
		}
	)
	di.inject_on(&pp, internal.service_db_pool)

	mut app := very.new(port: 8089, app_name: 'v-admin-skeleton')
	app.recover_handler = handlers.recover
	package.init_redis_manager(mut app) or {}
	routers.register_router(mut app)
	app.run()
}
