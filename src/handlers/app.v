module handlers

import xiusin.very

[group: '/app']
pub struct App {
pub mut:
	userid int
	ctx    &very.Context = unsafe { nil }
}

['/index'; get]
pub fn (mut app App) app_index() {
	app.ctx.text('hello app index')
}

['/info'; get]
pub fn (mut app App) app_info() {
	println('app_info')
}
