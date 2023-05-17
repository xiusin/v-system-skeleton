module handlers

import xiusin.very
import db.sqlite

[group: '/app']
pub struct App {
	very.Context // 自动注入
pub mut:
	db &sqlite.DB [inject: 'db'] = unsafe { nil }
}

['/index'; get]
pub fn (mut app App) app_index() !&very.Response {
	return app.text('hello app index')
}

pub fn (mut app App) app_err() !&very.Response {
	return error('xxx')
}
