module handlers

import xiusin.very
import entities
import services.dtos
import time
import crypto.md5
import services
import db.pg
import core.internal

pub fn employee_query(mut ctx very.Context) ! {
	mut paginator := services.employee_query(mut ctx)!
	mut items := paginator.items.clone()

	mut employee_ids := []string{}
	for item in items {
		employee_ids << '${item.id}'
	}
	employee_ids << '-1'

	sql_ := "select employee_id, string_agg(role_id::varchar, ',') as role_id_list, string_agg(role_name, ',') as role_name_list from t_role_employee e join t_role r on e.role_id = r.id where employee_id in (${employee_ids.join(',')}) group by employee_id"
	mut builder := entities.new_builder(false)
	mut ralation := builder.query_raw[entities.EmployeeRoleRelation](mut ctx, sql_)!

	mut employee_roles := map[int]entities.EmployeeRoleRelation{}
	for it in ralation {
		employee_roles[it.employee_id] = it
	}
	departments := services.get_department_map(mut ctx)!

	mut employees := []dtos.EmployeeRespDto{cap: items.len}
	for item in items {
		mut roles := []int{}
		mut role_name := []string{}
		if employee_roles[item.id].role_id_list.len > 0 {
			for role_id in employee_roles[item.id].role_id_list.split(',') {
				roles << role_id.int()
			}
			role_name = employee_roles[item.id].role_name_list.split(',')
		}

		employees << dtos.EmployeeRespDto{
			id: item.id
			login_name: item.login_name
			actual_name: item.actual_name
			gender: item.gender
			phone: item.phone
			department_id: item.department_id
			department_name: departments[item.department_id].name
			disabled_flag: item.disabled_flag == 1
			deleted_flag: item.deleted_flag == 1
			administrator_flag: item.administrator_flag == 1
			remark: item.remark
			role_id_list: roles
			role_name_list: role_name
		}
	}

	resp_paginator := entities.Paginator[dtos.EmployeeRespDto]{
		empty: employees.len == 0
		total: paginator.total
		current_page: paginator.current_page
		page_size: paginator.page_size
		pages: paginator.pages
		items: employees
	}

	resp_success[entities.Paginator[dtos.EmployeeRespDto]](mut ctx, data: resp_paginator)!
}

pub fn employee_reset_password(mut ctx very.Context) ! {
	id := ctx.param('id').int()
	password := rand_str(8)
	pp := ctx.di[&very.PoolChannel[pg.DB]](internal.service_db_pool)!
	mut db := pp.acquire()!
	defer {
		pp.release(db)
	}
	sql db {
		update entities.Employee set login_pwd = md5.hexhash(password), update_time = time.now().custom_format(time_format)
		where id == id
	}!
	resp_success[string](mut ctx, data: password)!
}

pub fn employee_update_disabled(mut ctx very.Context) ! {
	id := ctx.param('id').int()
	pp := ctx.di[&very.PoolChannel[pg.DB]](internal.service_db_pool)!
	mut db := pp.acquire()!
	defer {
		pp.release(db)
	}
	employees := sql db {
		select from entities.Employee where id == id limit 1
	}!
	if employees.len == 0 {
		return error('no ${id} user')
	}
	disabled_flag := if employees.first().disabled_flag == 1 { 0 } else { 1 }
	sql db {
		update entities.Employee set disabled_flag = disabled_flag, update_time = time.now().custom_format(time_format)
		where id == id
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn employee_update_password(mut ctx very.Context) ! {
	update_password := ctx.body_parse[dtos.EmployeeUpdatePasswordDto]()!
	if update_password.confirm_pwd != update_password.new_password {
		return error('new password error')
	}

	login_user_id := ctx.value('user_id', 0)! as int

	pp := ctx.di[&very.PoolChannel[pg.DB]](internal.service_db_pool)!
	mut db := pp.acquire()!
	defer {
		pp.release(db)
	}
	users := sql db {
		select from entities.Employee where id == login_user_id limit 1
	}!

	if md5.hexhash(update_password.old_password) != users.first().login_pwd {
		return error('old password error')
	}

	sql db {
		update entities.Employee set login_pwd = md5.hexhash(update_password.new_password),
		update_time = time.now().custom_format(time_format) where id == login_user_id
	}!

	resp_success[string](mut ctx, data: '')!
}

pub fn employee_query_all(mut ctx very.Context) ! {
	pp := ctx.di[&very.PoolChannel[pg.DB]](internal.service_db_pool)!
	mut db := pp.acquire()!
	defer {
		pp.release(db)
	}
	employees := sql db {
		select from entities.Employee
	}!
	resp_success[[]entities.Employee](mut ctx, data: employees)!
}

pub fn employee_add(mut ctx very.Context) ! {
	mut employee := ctx.body_parse[entities.Employee]()!
	pp := ctx.di[&very.PoolChannel[pg.DB]](internal.service_db_pool)!
	mut db := pp.acquire()!
	defer {
		pp.release(db)
	}
	password := services.employee_add(db, mut employee)!

	employees := sql db {
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

	pp := ctx.di[&very.PoolChannel[pg.DB]](internal.service_db_pool)!
	mut db := pp.acquire()!
	defer {
		pp.release(db)
	}

	for id in ids {
		sql db {
			delete from entities.Employee where id == id
			delete from entities.RoleEmployee where employee_id == id
		}!
	}
	resp_success[string](mut ctx, data: '')!
}

pub fn employee_update_batch_department(mut ctx very.Context) ! {
	query_dto := ctx.body_parse[dtos.EmployeeBatchDepartmentDto]()!

	pp := ctx.di[&very.PoolChannel[pg.DB]](internal.service_db_pool)!
	mut db := pp.acquire()!
	defer {
		pp.release(db)
	}
	for employee_id in query_dto.employee_id_list {
		sql db {
			update entities.Employee set department_id = query_dto.department_id, update_time = time.now().custom_format(time_format)
			where id == employee_id
		}!
	}
	resp_success[string](mut ctx, data: '')!
}

pub fn employee_update(mut ctx very.Context) ! {
	employee := ctx.body_parse[dtos.EmployeeRespDto]()!

	pp := ctx.di[&very.PoolChannel[pg.DB]](internal.service_db_pool)!
	mut db := pp.acquire()!
	defer {
		pp.release(db)
	}
	sql db {
		update entities.Employee set actual_name = employee.actual_name, login_name = employee.login_name,
		disabled_flag = '${employee.disabled_flag}'.int(), gender = employee.gender.str().int(),
		department_id = employee.department_id, phone = employee.phone where id == employee.id
	}!

	// 更新角色
	sql db {
		delete from entities.RoleEmployee where employee_id == employee.id
	}!
	for role_id in employee.role_id_list {
		relation := entities.RoleEmployee{
			role_id: role_id
			employee_id: employee.id
			update_time: time.now().custom_format(time_format)
            create_time: time.now().custom_format(time_format)
		}
		sql db {
			insert relation into entities.RoleEmployee
		}!
	}

	resp_success[string](mut ctx, data: '')!
}
