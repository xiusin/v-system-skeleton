module config

import db.sqlite
import db.pg

pub fn get_db() sqlite.DB {
	mut db := sqlite.connect('database.db') or { panic(err) }
	db.synchronization_mode(sqlite.SyncMode.off) or {}
	db.journal_mode(sqlite.JournalMode.memory) or {}

	return db
}

pub fn get_pg_db() !pg.DB {
	mut db := pg.connect(
		host: '47.102.127.65'
		port: 5433
		user: 'xiusin'
		password: 'Q9ANXDWizMr4'
		dbname: 'db2e57200cda4043e4bd848d434f590854vcms'
	)!
	return db
}

pub fn get_secret_key() string {
	return 'SECRET_KEY'
}
