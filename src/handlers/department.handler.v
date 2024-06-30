module handlers

import xiusin.very
import entities
import time
import db.mysql

pub fn department_tree_list(mut ctx very.Context) ! {
	mut db := ctx.di[&very.PoolChannel[mysql.DB]]('db_pool')!.acquire()!
	defer {
		fn [mut db, mut ctx] () {
			mut pp := ctx.di[&very.PoolChannel[mysql.DB]]('db_pool') or { return }
			pp.release(db)
		}()
	}
	departments := sql db {
		select from entities.Department
	}!
	tree := entities.build_tree[entities.Department, entities.DepartmentTree](departments,
		0)
	resp_success[[]entities.DepartmentTree](mut ctx, data: tree)!
}

pub fn department_list_all(mut ctx very.Context) ! {
	mut db := ctx.di[&very.PoolChannel[mysql.DB]]('db_pool')!.acquire()!
	defer {
		fn [mut db, mut ctx] () {
			mut pp := ctx.di[&very.PoolChannel[mysql.DB]]('db_pool') or { return }
			pp.release(db)
		}()
	}
	departments := sql db {
		select from entities.Department
	}!
	resp_success[[]entities.Department](mut ctx, data: departments)!
}

pub fn department_add(mut ctx very.Context) ! {
	mut department := ctx.body_parse[entities.Department]()!
	department.create_time = time.now().custom_format(time_format)
	mut db := ctx.di[&very.PoolChannel[mysql.DB]]('db_pool')!.acquire()!
	defer {
		fn [mut db, mut ctx] () {
			mut pp := ctx.di[&very.PoolChannel[mysql.DB]]('db_pool') or { return }
			pp.release(db)
		}()
	}
	sql db {
		insert department into entities.Department
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn department_update(mut ctx very.Context) ! {
	department := ctx.body_parse[entities.Department]()!
	mut db := ctx.di[&very.PoolChannel[mysql.DB]]('db_pool')!.acquire()!
	defer {
		fn [mut db, mut ctx] () {
			mut pp := ctx.di[&very.PoolChannel[mysql.DB]]('db_pool') or { return }
			pp.release(db)
		}()
	}
	sql db {
		update entities.Department set name = department.name, manager_id = department.manager_id,
		parent_id = department.parent_id, update_time = time.now().custom_format(time_format),
		sort = department.sort where id == department.id
	}!
	resp_success[string](mut ctx, data: '')!
}
