module main

import xiusin.very
import config
import routers
import handlers
import xiusin.very.di

fn main() {
	mut app := very.new(very.default_configuration())

	app.recover_handler = fn (mut ctx very.Context) ! { // 统一错误处理函数
		ctx.json[handlers.Resp[handlers.Empty]](handlers.Resp[handlers.Empty]{
			code: 500
			ok: false
			msg: ctx.err().msg()
			data: handlers.Empty{}
		})
	}

	mut db := config.get_db()!

	app.use_db(mut db)
	app.di.set(di.Service{ name: 'db', instance: &db })
	// app.di.set(di.Service{ name: 'orm', instance: orm.Connection(db) })

	app.statics('/uploads', 'uploads')
	app.statics('/manages', 'typescript-ant-design-vue3/dist/', 'index.html')

	routers.register_router(mut app)
	app.run()
}
