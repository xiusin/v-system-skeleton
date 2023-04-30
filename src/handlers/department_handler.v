module handlers

import xiusin.very
import entities
import time

pub fn department_tree_list(mut ctx very.Context) ! {
	resp_success[[]entities.DepartmentTree](mut ctx,
		data: entities.build_tree[entities.Department, entities.DepartmentTree](sql ctx.db {
			select from entities.Department
		}!, 0)
	)!
}

pub fn department_list_all(mut ctx very.Context) ! {
	departments := sql ctx.db {
		select from entities.Department
	}!
	resp_success[[]entities.Department](mut ctx, data: departments)!
}

pub fn department_add(mut ctx very.Context) ! {
	mut department := ctx.body_parse[entities.Department]()!
	department.create_time = time.now().custom_format(time_format)
	sql ctx.db {
		insert department into entities.Department
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn department_update(mut ctx very.Context) ! {
	department := ctx.body_parse[entities.Department]()!
	sql ctx.db {
		update entities.Department set name = department.name, manager_id = department.manager_id,
		parent_id = department.parent_id, update_time = time.now().custom_format(time_format),
		sort = department.sort where id == department.id
	}!
	resp_success[string](mut ctx, data: '')!
}
