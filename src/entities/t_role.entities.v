module entities

@[table: 't_role']
pub struct Role {
pub mut:
	id          int    @[json: 'roleId'; primary; sql: serial]
	role_name   string @[json: 'roleName']
	remark      string
	update_time string @[default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time string @[default: 'CURRENT_TIMESTAMP'; json: 'createTime']
}
