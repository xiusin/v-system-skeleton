module handlers

import xiusin.very
import entities
import db.sqlite
import dto
import time
import crypto.md5
import rand

pub fn employee_query(mut ctx very.Context) ! {
	query_dto := ctx.body_parse[dto.EmployeeQueryDto]()!
	db := ctx.di.get[sqlite.DB]('db')!

	mut builder := entities.new_builder()

	builder.model[entities.Employee]()

	mut where := []string{}

	if query_dto.role_id > 0 {
		employee_roles := sql ctx.db {
			select from entities.RoleEmployee where role_id == query_dto.role_id
		}!
		mut employee_ids := []string{}
		for employee_role in employee_roles {
			employee_ids << employee_role.employee_id.str()
		}

		where << 'id in (${employee_ids.join(',')})'
	}

	if query_dto.department_id != none { //  &&
		if query_dto.department_id? > 0 {
			where << 'department_id = (${query_dto.department_id})'
		}
	}

	if query_dto.keyword.len > 0 { // sql注入危险
		where << '(actual_name like "%${query_dto.keyword}%" or login_name like "%${query_dto.keyword}%" or phone like "%${query_dto.keyword}%")'
	}

	if query_dto.disabled_flag != none {
		flag := if query_dto.disabled_flag? { 1 } else { 0 }
		where << 'disabled_flag = ${flag}'
	}

	builder.where(where.join(' AND '))
	builder.limit(10)

	count := db.q_int(builder.to_sql(true))
	users, _ := db.exec(builder.to_sql())

	paginator := builder.get_page[entities.Employee, sqlite.Row](count, query_dto.page_num,
		query_dto.page_size, users)!

	resp_success[entities.Paginator[entities.Employee]](mut ctx, data: paginator)!
}

pub fn employee_reset_password(mut ctx very.Context) ! {
	id := ctx.param('id').int()
	password := rand.string_from_set('abcdefghijklmnopqrstuvwxyz1234567890_-+=!@#$%^&*()',
		10)
	sql ctx.db {
		update entities.Employee set login_pwd = md5.hexhash(password), update_time = time.now().custom_format(time_format)
		where id == id
	}!
	resp_success[string](mut ctx, data: password)!
}

pub fn employee_update_disabled(mut ctx very.Context) ! {
	id := ctx.param('id').int()
	employees := sql ctx.db {
		select from entities.Employee where id == id limit 1
	}!
	if employees.len == 0 {
		return error('no ${id} user')
	}
	disabled_flag := if employees.first().disabled_flag == 1 { 0 } else { 1 }
	sql ctx.db {
		update entities.Employee set disabled_flag = disabled_flag, update_time = time.now().custom_format(time_format)
		where id == id
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn employee_update_password(mut ctx very.Context) ! {
	update_password := ctx.body_parse[dto.EmployeeUpdatePasswordDto]()!

	if update_password.confirm_pwd != update_password.new_password {
		return error('new password error')
	}

	login_user_id := ctx.value('user_id')! as int

	users := sql ctx.db {
		select from entities.Employee where id == login_user_id limit 1
	}!

	if md5.hexhash(update_password.old_password) != users.first().login_pwd {
		return error('old password error')
	}

	sql ctx.db {
		update entities.Employee set login_pwd = md5.hexhash(update_password.new_password),
		update_time = time.now().custom_format(time_format) where id == login_user_id
	}!

	resp_success[string](mut ctx, data: '')!
}

pub fn employee_query_all(mut ctx very.Context) ! {
	employees := sql ctx.db {
		select from entities.Employee
	}!
	resp_success[[]entities.Employee](mut ctx, data: employees)!
}

pub fn employee_add(mut ctx very.Context) ! {
	mut employee := ctx.body_parse[entities.Employee]()!
	employee.login_pwd = md5.hexhash('123456')
	employee.update_time = time.now().custom_format(time_format)
	employee.create_time = employee.update_time

	sql ctx.db {
		insert employee into entities.Employee
	}!
	resp_success[string](mut ctx, data: '123456')!
}

pub fn employee_delete(mut ctx very.Context) ! {
	ids := ctx.body_parse[[]int]()!
	for id in ids {
		sql ctx.db {
			delete from entities.Employee where id == id
		}!
	}
	resp_success[string](mut ctx, data: '')!
}

pub fn employee_update(mut ctx very.Context) ! {
	employee := ctx.body_parse[entities.Employee]()!

	sql ctx.db {
		update entities.Employee set actual_name = employee.actual_name, login_name = employee.login_name,
		gender = employee.gender, disabled_flag = employee.disabled_flag, department_id = employee.department_id,
		phone = employee.phone, update_time = time.now().custom_format(time_format) where id == employee.id
	}!
	resp_success[string](mut ctx, data: '')!
}
