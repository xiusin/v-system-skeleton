module handlers

import xiusin.very
import entities
import db.sqlite
import dto
import time

pub fn dict_key_query(mut ctx very.Context) ! {
	query_dto := ctx.body_parse[dto.DictDto]()!
	db := ctx.di.get[sqlite.DB]('db')!

	mut builder := entities.new_builder()
	builder.model[entities.DictKey]()
	mut where := []string{}

	builder.limit(10)

	count := db.q_int(builder.to_sql(true))
	users, _ := db.exec(builder.to_sql())

	paginator := builder.get_page[entities.DictKey, sqlite.Row](count, query_dto.page_num,
		query_dto.page_size, users)!

	resp_success[entities.Paginator[entities.DictKey]](mut ctx, data: paginator)!
}

pub fn dict_key_delete(mut ctx very.Context) ! {
	ids := ctx.body_parse[[]int]()!
	for id in ids {
		sql ctx.db {
			delete from entities.DictKey where id == id
		}!
	}
	resp_success[string](mut ctx, data: '')!
}

pub fn dict_key_add(mut ctx very.Context) ! {
	key := ctx.body_parse[entities.DictKey]()!
	sql ctx.db {
		insert key into entities.DictKey
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn dict_key_edit(mut ctx very.Context) ! {
	key := ctx.body_parse[entities.DictKey]()!
	sql ctx.db {
		update entities.DictKey set key_code = key.key_code, key_name = key.key_name, remark = key.remark,
		update_time = time.now().custom_format(time_format) where id == key.id
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn dict_value_query(mut ctx very.Context) ! {
	query_dto := ctx.body_parse[dto.DictDto]()!
	db := ctx.di.get[sqlite.DB]('db')!

	mut builder := entities.new_builder()
	builder.model[entities.DictValue]()
	mut where := []string{}

	if query_dto.dict_key_id > 0 {
		where << 'id = ${query_dto.dict_key_id}'
	}

	builder.limit(10)

	count := db.q_int(builder.to_sql(true))
	users, _ := db.exec(builder.to_sql())

	paginator := builder.get_page[entities.DictValue, sqlite.Row](count, query_dto.page_num,
		query_dto.page_size, users)!

	resp_success[entities.Paginator[entities.DictValue]](mut ctx, data: paginator)!
}

pub fn dict_value_delete(mut ctx very.Context) ! {
	ids := ctx.body_parse[[]int]()!
	for id in ids {
		sql ctx.db {
			delete from entities.DictValue where id == id
		}!
	}
	resp_success[string](mut ctx, data: '')!
}

pub fn dict_value_add(mut ctx very.Context) ! {
	value := ctx.body_parse[entities.DictValue]()!
	sql ctx.db {
		insert value into entities.DictValue
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn dict_value_edit(mut ctx very.Context) ! {
	value := ctx.body_parse[entities.DictValue]()!
	sql ctx.db {
		update entities.DictValue set value_code = value.value_code, value_name = value.value_name,
		remark = value.remark, dict_key_id = value.dict_key_id, update_time = time.now().custom_format(time_format)
		where id == value.id
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn config_query(mut ctx very.Context) ! {
	query_dto := ctx.body_parse[dto.ConfigDto]()!
	db := ctx.di.get[sqlite.DB]('db')!

	mut builder := entities.new_builder()
	builder.model[entities.Config]()
	mut where := []string{}

	if query_dto.config_key.len > 0 {
		where << "config_key = '${query_dto.config_key}'"
	}

	builder.limit(10)

	count := db.q_int(builder.to_sql(true))
	users, _ := db.exec(builder.to_sql())

	paginator := builder.get_page[entities.Config, sqlite.Row](count, query_dto.page_num,
		query_dto.page_size, users)!
	resp_success[entities.Paginator[entities.Config]](mut ctx, data: paginator)!
}
