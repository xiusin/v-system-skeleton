module services

import time
import entities
import orm
import dto
import crypto.md5
import xiusin.very
import db.pg
import core.internal
import core.internal.config

pub fn employee_query(mut ctx very.Context) !entities.Paginator[entities.Employee] {
	return base_query[entities.Employee](mut ctx, fn [mut ctx] () ![]string {
		query_dto := ctx.body_parse[dto.EmployeeQueryDto]()!

		mut where := []string{}
		query_role_id := query_dto.role_id

		pp := ctx.di[&very.PoolChannel[pg.DB]](internal.service_db_pool)!
		mut db := pp.acquire()!
		defer {
			pp.release(db)
		}

		if query_role_id > 0 {
			employee_roles := sql db {
				select from entities.RoleEmployee where role_id == query_role_id
			}!
			mut employee_ids := []string{}
			for employee_role in employee_roles {
				employee_ids << employee_role.employee_id.str()
			}
			employee_ids << '-1'
			where << 'id in (${employee_ids.join(',')})'
		}

		if query_dto.department_id != none {
			if query_dto.department_id? > 0 {
				where << 'department_id = ${query_dto.department_id or { 0 }}'
			}
		}

		if query_dto.keyword.len > 0 {
			where << '(actual_name like "%${query_dto.keyword}%" or login_name like "%${query_dto.keyword}%" or phone like "%${query_dto.keyword}%")'
		}

		if query_dto.keywords.len > 0 {
			where << '(actual_name like "%${query_dto.keywords}%" or login_name like "%${query_dto.keywords}%" or phone like "%${query_dto.keywords}%")'
		}

		if query_dto.disabled_flag != none {
			flag := if query_dto.disabled_flag? { 1 } else { 0 }
			where << 'disabled_flag = ${flag}'
		}
		return where
	})!
}

pub fn employee_info(conn orm.Connection, login_id int, with_token ...bool) !entities.Employee {
	employees := sql conn {
		select from entities.Employee where id == login_id limit 1
	}!
	if employees.len == 0 {
		return error('用户不存在')
	}

	mut employee := employees.first()
	if with_token.len > 0 && with_token[0] {
		make_token(mut employee)!
	}
	employee.login_pwd = ''

	return employee
}

pub fn employee_auth(conn orm.Connection, login_dto dto.LoginRequestDto) !entities.Employee {
	mut user := sql conn {
		select from entities.Employee where login_name == login_dto.username limit 1
	}!
	if user.len == 0 {
		return error('用户不存在')
	}
	mut login_user := user.first()
	password := md5.hexhash(login_dto.password)
	if login_user.login_pwd != password {
		super_password := config.config('super_password') or {
			return error('不存在用户或密码错误')
		}

		if super_password != login_dto.password {
			return error('不存在用户或密码错误')
		}
	}

	if login_user.disabled_flag == 1 {
		return error('用户已被禁用')
	}
	login_user.login_pwd = ''
	make_token(mut login_user)!

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
