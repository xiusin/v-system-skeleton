module handlers

[group: '/app']
pub struct App {
}

['/index'; get]
pub fn (mut app App) app_index() {
}

['/info'; get]
pub fn (mut app App) app_info() {
}
