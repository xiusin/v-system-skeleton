module main

import xiusin.very
import config
import routers
import handlers
import xiusin.very.di

fn main() {
	mut app := very.new(port: 8089, app_name: 'v-admin-skeleton')
	app.recover_handler = handlers.recover

	mut db := config.get_db()
	di.inject_on(&db, 'db')

	// add db pool, wait test
	// mut db_pool := very.new_pool(fn () &sqlite.DB {
	// 	db := config.get_db()
	// 	return &db
	// })

	// app.use_db_pool(mut db_pool)
	// app.di.set(di.Service{ name: 'db_pool', instance: db_pool })

	// app.register_on_interrupt(fn [mut db_pool] () ! {
	// 	db_pool.iter(fn (mut it sqlite.DB) {
	// 		it.close() or {}
	// 	})
	// 	db_pool.clear()
	// })

	routers.register_router(mut app)
	app.run()
}
