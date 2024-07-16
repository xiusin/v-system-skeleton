module main

import xiusin.very
import handlers
import core.package
import core.routers

fn main() {
	mut app := very.new(port: 8089, app_name: 'v-admin-skeleton')
	app.recover_handler = handlers.recover
	package.init_pg()
	package.init_redis_manager(mut app) or {}
	routers.register_router(mut app)
	app.run()
}
