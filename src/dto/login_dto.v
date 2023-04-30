module dto

import entities

pub struct LoginRequestDto {
pub mut:
	username string
	password string
}

pub struct LoginResponseDto {
pub mut:
	// entities.Employee
	id                 int             [json: 'menuId'; primary; sql: serial]
	login_name         string          [json: 'loginName']
	login_pwd          string          [json: 'loginPwd']
	actual_name        string          [json: 'actualName']
	gender             i8
	phone              string
	department_id      int             [json: 'departmentId']
	disabled_flag      i8              [json: 'disabledFlag']
	deleted_flag       i8              [json: 'deletedFlag']
	administrator_flag i8              [json: 'administratorFlag']
	remark             string
	update_time        string          [default: 'CURRENT_TIMESTAMP']
	create_time        string          [default: 'CURRENT_TIMESTAMP']
	token              string
	menu_list          []entities.Menu [json: 'menuList']
}

pub fn new_login_response_dto[T](user T, menus []entities.Menu) LoginResponseDto {
	dto := LoginResponseDto{
		menu_list: menus
	}
	$for field in T.fields {
		dto.$(field.name) = user.$(field.name)
	}
	return dto
}
