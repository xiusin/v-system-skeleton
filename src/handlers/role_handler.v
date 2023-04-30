module handlers

import xiusin.very
import entities
import dto

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
