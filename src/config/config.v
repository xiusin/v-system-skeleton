module config

import db.sqlite

pub fn get_db() sqlite.DB {
	mut db := sqlite.connect('database.db') or { panic(err) }
	db.synchronization_mode(sqlite.SyncMode.off)
	db.journal_mode(sqlite.JournalMode.memory)

	return db
}

pub fn get_secret_key() string {
	return 'SECRET_KEY'
}
