module dto

import entities

pub struct RoleResponseDto {
pub mut:
	menu_tree_list   []entities.MenuTree [json: 'menuTreeList']
	role_id          int                 [json: 'roleId']
	selected_menu_id []int               [json: 'selectedMenuId']
}
