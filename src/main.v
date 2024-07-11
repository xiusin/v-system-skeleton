module main

import xiusin.very
import config
import routers
import handlers
import xiusin.very.di
import db.pg
import time
import xiusin.cache

fn main() {
	mut app := very.new(port: 8089, app_name: 'v-admin-skeleton')
	app.recover_handler = handlers.recover

	mut pp := very.new_ch_pool[pg.DB](
		factory: fn () !pg.DB {
			return config.get_pg_db()!
		}
		release_failed_fn: fn (mut inst pg.DB) {
			println('释放对象： ${ptr_str(inst)}')
			inst.close()
		}
		loop_fn: fn (mut inst pg.DB) ! {
			inst.q_int('select 1')!
		}
	)
	di.inject_on(&pp, 'db_pool')

	mut cache_manager := cache.new(cleanup_interval: time.second * 10)
	di.inject_on(&cache_manager, 'cache_manager')

	routers.register_router(mut app)
	app.run()
}
