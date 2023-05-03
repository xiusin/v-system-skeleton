module handlers

import xiusin.very
import entities
import dto
import time
import crypto.md5
import services

pub fn employee_query(mut ctx very.Context) ! {
	paginator := services.employee_query(mut ctx)!
	resp_success[entities.Paginator[entities.Employee]](mut ctx, data: paginator)!
}

pub fn employee_reset_password(mut ctx very.Context) ! {
	id := ctx.param('id').int()
	password := rand_str(8)
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
	password := services.employee_add(ctx.db, mut employee)!

	// 查询新账号ID
	employees := sql ctx.db {
		select from entities.Employee where login_name == employee.login_name limit 1
	}!
	// check_entity_exists[entities.Employee](mut ctx, 'login_name = "${employee.login_name}"')
	if employees.len == 0 {
		return error('新增用户失败')
	}
	resp_success[string](mut ctx, data: password)!
}

pub fn employee_delete(mut ctx very.Context) ! {
	ids := ctx.body_parse[[]int]()!
	for id in ids {
		sql ctx.db {
			delete from entities.Employee where id == id
			delete from entities.RoleEmployee where employee_id == id
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
