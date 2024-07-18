module services

import entities
import xiusin.very
import db.pg
import core.internal

pub fn get_department_map(mut ctx very.Context) !map[int]entities.Department {
	pp := ctx.di[&very.PoolChannel[pg.DB]](internal.service_db_pool)!
	mut db := pp.acquire()!
	defer {
		pp.release(db)
	}
	departments := sql db {
		select from entities.Department
	}!
	return internal.records_to_map[int, entities.Department](departments, 'id')
}
