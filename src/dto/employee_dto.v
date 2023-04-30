module dto

pub struct EmployeeQueryDto {
pub mut:
	department_id ?string [json: 'departmentId']
	disabled_flag bool    [json: 'disabledFlag']
	page_num      int     [json: 'pageNum']
	page_size     int     [json: 'pageSize']
	role_id       int     [json: 'roleId']
}
