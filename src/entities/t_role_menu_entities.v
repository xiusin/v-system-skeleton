module entities

[table: 't_role_menu']
pub struct RoleMenu {
pub mut:
	id          int    [json: 'roleMenuId'; primary; sql: serial]
	role_id     int    [json: 'roleId']
	menu_id     int    [json: 'menuId']
	update_time string [default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time string [default: 'CURRENT_TIMESTAMP'; json: 'createTime']
}
