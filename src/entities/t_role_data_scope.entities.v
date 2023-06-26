module entities

[table: 't_role_data_scope']
pub struct RoleDataScope {
pub mut:
	id              int    [primary; sql: serial]
	data_scope_type int    [json: 'dataScopeType']
	role_id         int    [json: 'roleId']
	view_type       int    [json: 'viewType']
	update_time     string [default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time     string [default: 'CURRENT_TIMESTAMP'; json: 'createTime']
}
