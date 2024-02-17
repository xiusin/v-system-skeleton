module config

import db.sqlite
import db.mysql

pub fn get_db() sqlite.DB {
	mut db := sqlite.connect('database.db') or { panic(err) }
	db.synchronization_mode(sqlite.SyncMode.off) or {}
	db.journal_mode(sqlite.JournalMode.memory) or {}

	return db
}


pub fn get_mysql_db() !mysql.DB {
	mut db := mysql.connect(
		host: 'rm-2zef5862fk3wi3orepo.mysql.rds.aliyuncs.com'
		port: 3306
		username: 'xiusin'
		password: 'yuAU702G!'
		dbname: 'test'
	)!

	return db
}

pub fn get_secret_key() string {
	return 'SECRET_KEY'
}
