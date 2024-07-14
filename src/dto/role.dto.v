module dto

import entities

pub struct RoleResponseDto {
pub mut:
	menu_tree_list []entities.MenuTree @[json: 'menuTreeList']

	role_id          int   @[json: 'roleId']
	selected_menu_id []int @[json: 'selectedMenuId']
}

pub struct UpdateRoleMenuDto {
pub mut:
	menu_id_list []int @[json: 'menuIdList']
	role_id      int   @[json: 'roleId']
}

pub struct BatchRoleEmployeeDto {
pub mut:
	employee_id_list []int @[json: 'employeeIdList']
	role_id          int   @[json: 'roleId']
}
