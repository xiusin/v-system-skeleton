module main

import xiusin.very
import config
import routers
import handlers
import xiusin.very.di
import xiusin.vcolor

fn main() {
	mut app := very.new(very.default_configuration())
	app.recover_handler = handlers.recover

	mut db := config.get_db()!
	app.use_db(mut db)
	app.di.set(di.Service{ name: 'db', instance: &db })

	routers.register_router(mut app)

	vcolor.hi_yellow('> It’s simple, but someone has to do it, so I came.')
	app.run()
}
