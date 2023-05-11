module handlers

import xiusin.very
import db.sqlite
import time

[group: '/app']
pub struct App {
pub mut:
	db  &sqlite.DB    [inject: 'db'] = unsafe { nil }
	ctx &very.Context = unsafe { nil }
}

['/index'; get]
pub fn (mut app App) app_index() {
	app.ctx.text('hello app index: ${app.db.str()}')
}

['/info'; get]
pub fn (mut app App) app_info() {
	println('app_info')
}

['/long_time'; get]
pub fn (mut app App) long_time() {
	time.sleep(time.second * 10)
	println('10秒超时完成')
}
