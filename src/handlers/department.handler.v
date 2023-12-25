module handlers

import xiusin.very
import entities
import time
import db.sqlite

pub fn department_tree_list(mut ctx very.Context) ! {
	db := ctx.di[sqlite.DB]('db')!
	departments := sql db {
		select from entities.Department
	}!
	tree := entities.build_tree[entities.Department, entities.DepartmentTree](departments,
		0)
	resp_success[[]entities.DepartmentTree](mut ctx, data: tree)!
}

pub fn department_list_all(mut ctx very.Context) ! {
	db := ctx.di[sqlite.DB]('db')!
	departments := sql db {
		select from entities.Department
	}!
	resp_success[[]entities.Department](mut ctx, data: departments)!
}

pub fn department_add(mut ctx very.Context) ! {
	mut department := ctx.body_parse[entities.Department]()!
	department.create_time = time.now().custom_format(time_format)
	db := ctx.di[sqlite.DB]('db')!
	sql db {
		insert department into entities.Department
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn department_update(mut ctx very.Context) ! {
	department := ctx.body_parse[entities.Department]()!
	db := ctx.di[sqlite.DB]('db')!
	sql db {
		update entities.Department set name = department.name, manager_id = department.manager_id,
		parent_id = department.parent_id, update_time = time.now().custom_format(time_format),
		sort = department.sort where id == department.id
	}!
	resp_success[string](mut ctx, data: '')!
}
