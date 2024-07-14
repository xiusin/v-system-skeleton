module config

import db.pg
import xiusin.very.di
import xiusin.very
import entities

const db_config = 'vcms.db.config'

pub fn get_pg_db() !pg.DB {
	mut db := pg.connect(
		host: '124.222.103.232'
		port: 5432
		user: 'postgres'
		password: $env('DB_PASSWORD')
		dbname: 'postgres'
	)!
	return db
}

pub fn config(key string, default_ ...string) !string {
	mut m := &map[string]string{}
	if !di.exists(config.db_config) {
		pp := di.get[&very.PoolChannel[pg.DB]]('db_pool')!
		mut db := pp.acquire()!
		defer {
			pp.release(db)
		}
		items := sql db {
			select from entities.Config
		}!
		for item in items {
			unsafe {
				m[item.config_key] = item.config_value
			}
		}
		di.inject_on(m, config.db_config)
	} else {
		m = di.get[map[string]string](config.db_config)!
	}

	if key in m {
		unsafe {
			return m[key]
		}
	}

	if default_.len > 0 {
		return default_[0]
	}
	return error('不存在key: ${key}')
}
