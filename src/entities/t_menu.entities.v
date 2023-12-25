module entities

@[table: 't_menu']
pub struct Menu {
pub mut:
	id              int    @[json: 'menuId'; primary; sql: serial]
	menu_name       string @[json: 'menuName']
	menu_type       i8     @[json: 'menuType']
	parent_id       int    @[json: 'parentId']
	sort            int
	path            string
	component       string
	perms_type      string @[json: 'permsType']
	web_perms       string @[json: 'webPerms']
	icon            string
	context_menu_id int    @[json: 'contextMenuId']
	frame_flag      int    @[json: 'frameFlag']
	frame_url       string @[json: 'frameUrl']
	cache_flag      int    @[json: 'cacheFlag']
	visible_flag    int    @[json: 'visibleFlag']
	disabled_flag   int    @[json: 'disabledFlag']
	create_user_id  int    @[json: 'createUserId']
	update_user_id  int    @[json: 'updateUserId']
	update_time     string @[default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time     string @[default: 'CURRENT_TIMESTAMP'; json: 'createTime']
}

pub struct MenuTree {
pub mut:
	// Menu
	id              int    @[json: 'menuId'; primary; sql: serial]
	menu_name       string @[json: 'menuName']
	menu_type       i8     @[json: 'menuType']
	parent_id       int    @[json: 'parentId']
	sort            int
	path            string
	component       string
	perms_type      string @[json: 'permsType']
	web_perms       string @[json: 'webPerms']
	icon            string
	context_menu_id int    @[json: 'contextMenuId']
	frame_flag      int    @[json: 'frameFlag']
	frame_url       string @[json: 'frameUrl']
	cache_flag      int    @[json: 'cacheFlag']
	visible_flag    int    @[json: 'visibleFlag']
	disabled_flag   int    @[json: 'disabledFlag']
	create_user_id  int    @[json: 'createUserId']
	update_user_id  int    @[json: 'updateUserId']
	update_time     string @[default: 'CURRENT_TIMESTAMP']
	create_time     string @[default: 'CURRENT_TIMESTAMP']

	// --- ↑ copy
	children []MenuTree
}
