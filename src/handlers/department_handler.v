module handlers

import xiusin.very
import entities

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
