module services

import entities
import db.sqlite
import xiusin.very

pub fn get_department_map(mut ctx very.Context) !map[int]entities.Department {
	db := ctx.di[sqlite.DB]('db')!
	departments := sql db {
		select from entities.Department
	}!

	mut department_map := map[int]entities.Department{}
	for department in departments {
		department_map[department.id] = department
	}
	return department_map
}
