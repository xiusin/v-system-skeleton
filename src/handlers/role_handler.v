module handlers

import xiusin.very
import entities
import dto
import time

pub fn role_get_all(mut ctx very.Context) ! {
	roles := sql ctx.db {
		select from entities.Role
	}!

	resp_success[[]entities.Role](mut ctx, data: roles)!
}

pub fn role_get_role_selected_menu(mut ctx very.Context) ! {
	role_id := ctx.param('id').int()
	if role_id == 0 {
		return error('no role')
	}

	mut resp_dto := dto.RoleResponseDto{
		role_id: role_id
	}

	// 获取选中菜单
	role_menus := sql ctx.db {
		select from entities.RoleMenu where role_id == role_id
	}!

	for role_menu in role_menus {
		resp_dto.selected_menu_id << role_menu.menu_id
	}

	// 获取菜单树形结构列表
	resp_dto.menu_tree_list = entities.build_tree[entities.Menu, entities.MenuTree](sql ctx.db {
		select from entities.Menu
	}!, 0)

	resp_success[dto.RoleResponseDto](mut ctx, data: resp_dto)!
}

pub fn role_query_employee(mut ctx very.Context) ! {
	employee_query(mut ctx)!
}

pub fn role_remove_employee(mut ctx very.Context) ! {
	employee_id := ctx.query('employeeId').int()
	role_id := ctx.query('roleId').int()

	sql ctx.db {
		delete from entities.RoleEmployee where role_id == role_id && employee_id == employee_id
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn role_batch_remove_employee(mut ctx very.Context) ! {
	mut batch_dto := ctx.body_parse[dto.BatchRoleEmployeeDto]()!

	for employee_id in batch_dto.employee_id_list {
		sql ctx.db {
			delete from entities.RoleEmployee where role_id == batch_dto.role_id
			&& employee_id == employee_id
		}!
	}
	resp_success[string](mut ctx, data: '')!
}

pub fn role_batch_add_employee(mut ctx very.Context) ! {
	mut batch_dto := ctx.body_parse[dto.BatchRoleEmployeeDto]()!
	sql ctx.db {
		delete from entities.RoleEmployee where role_id == batch_dto.role_id
	}!

	for employee_id in batch_dto.employee_id_list {
		role_employee := entities.RoleEmployee{
			role_id: batch_dto.role_id
			employee_id: employee_id
			update_time: time.now().custom_format(time_format)
			create_time: time.now().custom_format(time_format)
		}
		sql ctx.db {
			insert role_employee into entities.RoleEmployee
		}!
	}
	resp_success[string](mut ctx, data: '')!
}

pub fn get_role_data_scope_list(mut ctx very.Context) ! {
	role_id := ctx.param('id').int()
	if role_id == 0 {
		return error('no role')
	}

	mut resp_dto := dto.RoleResponseDto{
		role_id: role_id
	}

	// 获取选中菜单
	role_menus := sql ctx.db {
		select from entities.RoleMenu where role_id == role_id
	}!

	for role_menu in role_menus {
		resp_dto.selected_menu_id << role_menu.menu_id
	}

	// 获取菜单树形结构列表
	resp_dto.menu_tree_list = entities.build_tree[entities.Menu, entities.MenuTree](sql ctx.db {
		select from entities.Menu
	}!, 0)

	resp_success[dto.RoleResponseDto](mut ctx, data: resp_dto)!
}

pub fn update_role_menu(mut ctx very.Context) ! {
	mut update_dto := ctx.body_parse[dto.UpdateRoleMenuDto]()!

	// 删除之前所选
	sql ctx.db {
		delete from entities.RoleMenu where role_id == update_dto.role_id
	}!

	for menu_id in update_dto.menu_id_list {
		role_menu := entities.RoleMenu{
			role_id: update_dto.role_id
			menu_id: menu_id
			update_time: time.now().custom_format(time_format)
			create_time: time.now().custom_format(time_format)
		}
		sql ctx.db {
			insert role_menu into entities.RoleMenu
		}!
	}

	resp_success[string](mut ctx, data: '')!
}

pub fn role_update(mut ctx very.Context) ! {
	role := ctx.body_parse[entities.Role]()!
	roles := sql ctx.db {
		select from entities.Role where id != role.id && role_name == role.role_name limit 1
	}!
	if roles.len > 0 {
		return error('角色名称重复')
	}
	sql ctx.db {
		update entities.Role set role_name = role.role_name, remark = role.remark, update_time = time.now().custom_format(time_format)
		where id == role.id
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn role_add(mut ctx very.Context) ! {
	mut role := ctx.body_parse[entities.Role]()!
	role.create_time = time.now().custom_format(time_format)
	role.update_time = time.now().custom_format(time_format)

	roles := sql ctx.db {
		select from entities.Role where role_name == role.role_name limit 1
	}!
	if roles.len > 0 {
		return error('角色名称重复')
	}
	sql ctx.db {
		insert role into entities.Role
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn role_delete(mut ctx very.Context) ! {
	role_id := ctx.param('id').int()

	sql ctx.db {
		delete from entities.RoleMenu where role_id == role_id
		delete from entities.RoleEmployee where role_id == role_id
		delete from entities.RoleDataScope where role_id == role_id
		delete from entities.Role where id == role_id
	}!

	resp_success[string](mut ctx, data: '')!
}
