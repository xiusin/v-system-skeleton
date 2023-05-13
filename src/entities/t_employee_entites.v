module entities

[table: 't_employee']
pub struct Employee {
pub mut:
	id                 int    [json: 'employeeId'; primary; sql: serial]
	login_name         string [json: 'loginName']
	login_pwd          string [json: 'loginPwd']
	actual_name        string [json: 'actualName']
	gender             i8
	phone              string
	department_id      int    [json: 'departmentId']
	disabled_flag      i8     [json: 'disabledFlag']
	deleted_flag       i8     [json: 'deletedFlag']
	administrator_flag i8     [json: 'administratorFlag']
	remark             string
	update_time        string [default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time        string [default: 'CURRENT_TIMESTAMP'; json: 'createTime']
	token              string [build: 'skip']
}

pub struct EmployeeRoleRelation {
pub mut:
	employee_id    int
	role_id_list   string
	role_name_list string
}
