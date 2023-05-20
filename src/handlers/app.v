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
pub fn (mut app App) app_index() ! {
	println('app index')
	// app.text('hello app index')!
	return error('hhh')
}

//
// pub fn (mut app App) app_err() string {
// 	 return 'hello world'
// }
//
// pub fn (mut app App) app_int() int {
// 	return 0
// }
