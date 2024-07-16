module package

import xiusin.very
import db.pg
import xiusin.very.di
import core.internal.config
import core.internal

pub fn init_pg() {
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
}
