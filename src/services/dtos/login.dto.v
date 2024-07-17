module dtos

import entities

pub struct LoginRequestDto {
pub mut:
	username string @[required]
	password string @[required]
}

pub struct LoginResponseDto {
pub mut:
	id                      int             @[json: 'menuId'; primary; sql: serial]
	login_name              string          @[json: 'loginName']
	login_pwd               string          @[json: 'loginPwd']
	actual_name             string          @[json: 'actualName']
	gender                  i8
	phone                   string
	department_id           int             @[json: 'departmentId']
	disabled_flag           i8              @[json: 'disabledFlag']
	deleted_flag            i8              @[json: 'deletedFlag']
	administrator_flag      i8              @[json: 'administratorFlag']
	remark                  string
	update_time             string          @[default: 'CURRENT_TIMESTAMP']
	create_time             string          @[default: 'CURRENT_TIMESTAMP']
	token                   string
	menu_list               []entities.Menu @[json: 'menuList']
	user_id                 int             @[json: 'userId']
	user_name               string          @[json: 'userName']
	user_type               string          @[json: 'userType']
	account_non_expired     bool            @[json: 'accountNonExpired']
	account_non_locked      bool            @[json: 'accountNonLocked']
	credentials_non_expired bool            @[json: 'credentialsNonExpired']
	last_login_ip           string          @[json: 'lastLoginIp']
	last_login_time         string          @[json: 'lastLoginTime']
	last_login_user_agent   string          @[json: 'lastLoginUserAgent']
	role_id_list            []int           @[json: 'roleIdList']
	role_name_list          []string        @[json: 'roleNameList']
	department_name         string          @[json: 'departmentName']
	username                string
	authorities             []Authority
}

pub struct Authority {
	authority string
}

pub fn new_login_response_dto[T](user T, menus []entities.Menu) LoginResponseDto {
	mut dto_ := LoginResponseDto{
		menu_list: menus
	}
	$for field in T.fields {
		dto_.$(field.name) = user.$(field.name)
	}
	mut authorities := []Authority{}

	for menu in menus {
		if menu.web_perms.len > 0 {
			authorities << Authority{
				authority: menu.web_perms
			}
		}
	}

	dto_.authorities = authorities
	return dto_
}
