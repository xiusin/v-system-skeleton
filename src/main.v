module main

import xiusin.very
import config
import routers
import handlers
import xiusin.very.di
import db.sqlite

fn main() {
	mut app := very.new(port: 8089)
	app.recover_handler = handlers.recover

	// add db pool, wait test
	mut db_pool := very.new_pool(fn () &sqlite.DB {
		db := config.get_db()
		return &db
	})

	app.use_db_pool(mut db_pool)
	app.di.set(di.Service{ name: 'db_pool', instance: db_pool })

	// app.register_on_interrupt(fn [mut db_pool] () ! {
	// 	db_pool.iter(fn (mut it sqlite.DB) ! {
	// 		it.close()!
	// 	})!
	// 	db_pool.clear()
	// })

	routers.register_router(mut app)
	app.run()
}
