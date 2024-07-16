module config

import db.pg
import xiusin.very.di
import xiusin.very
import entities
import core.internal

pub fn get_pg_db() !pg.DB {
	return pg.connect(
		host: '124.222.103.232'
		port: 5432
		user: 'postgres'
		password: $env('DB_PASSWORD')
		dbname: 'postgres'
	)!
}

pub fn config(key string, default_ ...string) !string {
	mut stores := &map[string]string{}
	if !di.exists(internal.service_db_config) {
		pp := di.get[&very.PoolChannel[pg.DB]](internal.service_db_pool)!
		mut db := pp.acquire()!
		defer {
			pp.release(db)
		}
		items := sql db {
			select from entities.Config
		}!
		for item in items {
			unsafe {
				stores[item.config_key] = item.config_value
			}
		}
		di.inject_on(m, internal.service_db_config)
	} else {
		stores = di.get[map[string]string](internal.service_db_config)!
	}

	if key in stores {
		unsafe {
			return stores[key]
		}
	}

	if default_.len > 0 {
		return default_[0]
	}
	return error('不存在key: ${key}')
}
