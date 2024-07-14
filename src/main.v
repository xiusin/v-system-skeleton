module main

import xiusin.very
import config
import routers
import handlers
import xiusin.very.di
import db.pg
import xiusin.vredis

fn main() {
	mut app := very.new(port: 8089, app_name: 'v-admin-skeleton')
	app.recover_handler = handlers.recover

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
	di.inject_on(&pp, 'db_pool')

	mut rp := vredis.new_pool(
		dial: fn () !&vredis.Redis {
			return vredis.new_client()!
		}
	)!
	di.inject_on(rp, 'redis_manager')

	app.register_on_interrupt(fn [mut rp] () ! {
		rp.close()
	})

	routers.register_router(mut app)
	app.run()
}
