module dto

pub struct EmployeeQueryDto {
pub mut:
	department_id ?int   [json: 'departmentId']
	disabled_flag ?bool  [json: 'disabledFlag']
	page_num      int    [json: 'pageNum']
	page_size     int    [json: 'pageSize']
	role_id       int    [json: 'roleId']
	keyword       string [json: 'keyword']
	keywords      string [json: 'keywords']
}

pub struct EmployeeUpdatePasswordDto {
pub mut:
	confirm_pwd  string [json: 'confirm_pwd']
	new_password string [json: 'new_password']
	old_password string [json: 'old_password']
}
