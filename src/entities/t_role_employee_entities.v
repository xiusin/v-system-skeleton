module entities

[table: 't_role_employee']
pub struct RoleEmployee {
pub mut:
	id          int    [primary; sql: serial]
	role_id     int    [json: 'roleId']
	employee_id int    [json: 'employeeId']
	update_time string [default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time string [default: 'CURRENT_TIMESTAMP'; json: 'createTime']
}
