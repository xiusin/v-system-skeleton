module services

import time
import entities
import orm
import dto
import crypto.md5

pub fn employee_login_info(conn orm.Connection, login_id int) !entities.Employee {
	user := sql conn {
		select from entities.Employee where id == login_id limit 1
	}!
	if user.len == 0 {
		return error('no user')
	}
	mut login_user := user.first()
	login_user.make_token()
	login_user.login_pwd = ''

	return login_user
}

pub fn employee_auth(conn orm.Connection, login_dto dto.LoginRequestDto) !entities.Employee {
	password := md5.hexhash(login_dto.password)
	user := sql conn {
		select from entities.Employee where login_name == login_dto.username && login_pwd == password limit 1
	}!

	if user.len == 0 {
		return error('no user')
	}
	mut login_user := user.first()

	if login_user.disabled_flag {
		return error('用户已被禁用')
	}

	login_user.login_pwd = ''
	login_user.make_token()

	return login_user
}

pub fn employee_add(conn orm.Connection, mut employee entities.Employee) !string {
	employees := sql conn {
		select from entities.Employee where login_name == employee.login_name
		|| actual_name == employee.actual_name || phone == employee.phone limit 1
	}!

	if employees.len > 0 {
		return error('已经存在相同的账户,请确定唯一性')
	}

	employee.login_pwd = md5.hexhash('123456')
	employee.update_time = time.now().custom_format('YYYY-MM-DD HH:mm:ss')
	employee.create_time = employee.update_time

	sql conn {
		insert employee into entities.Employee
	}!

	return '123456'
}
