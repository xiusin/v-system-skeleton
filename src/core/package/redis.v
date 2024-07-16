module package

import xiusin.very.di
import core.internal
import xiusin.vredis
import xiusin.very

pub fn init_redis_manager(mut app very.Application) ! {
	mut rp := vredis.new_pool(
		dial: fn () !&vredis.Redis {
			return vredis.new_client()!
		}
	)!
	di.inject_on(rp, internal.service_redis_manager)

	app.register_on_interrupt(fn [mut rp] () ! {
		rp.close()
	})
}
