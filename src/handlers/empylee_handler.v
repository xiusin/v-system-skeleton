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
