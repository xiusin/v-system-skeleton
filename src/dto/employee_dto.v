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

pub struct EmployeeBatchDepartmentDto {
pub mut:
	employee_id_list []int [json: 'employeeIdList']
	department_id    int   [json: 'departmentId']
}

pub struct EmployeeUpdatePasswordDto {
pub mut:
	confirm_pwd  string [json: 'confirm_pwd']
	new_password string [json: 'new_password']
	old_password string [json: 'old_password']
}

pub struct EmployeeRespDto {
pub mut:
	id                 int      [json: 'employeeId']
	login_name         string   [json: 'loginName']
	login_pwd          string   [json: 'loginPwd']
	actual_name        string   [json: 'actualName']
	gender             i8
	phone              string
	department_id      int      [json: 'departmentId']
	department_name    string   [json: 'departmentName']
	disabled_flag      bool     [json: 'disabledFlag']
	deleted_flag       bool     [json: 'deletedFlag']
	administrator_flag bool     [json: 'administratorFlag']
	remark             string
	role_id_list       []int    [json: 'roleIdList']
	role_name_list     []string [json: 'roleNameList']
}
