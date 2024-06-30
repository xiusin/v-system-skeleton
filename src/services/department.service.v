module services

import entities
import xiusin.very
import db.mysql

pub fn get_department_map(mut ctx very.Context) !map[int]entities.Department {
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

	mut department_map := map[int]entities.Department{}
	for department in departments {
		department_map[department.id] = department
	}
	return department_map
}
