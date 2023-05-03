module handlers

import xiusin.very
import entities
import db.sqlite
import dto
import time
import os
import json

pub fn dict_key_query(mut ctx very.Context) ! {
	query_dto := ctx.body_parse[dto.DictDto]()!
	db := ctx.di.get[sqlite.DB]('db')!

	mut builder := entities.new_builder()
	builder.model[entities.DictKey]()

	builder.limit(10)

	count := db.q_int(builder.to_sql(true))
	users, _ := db.exec(builder.to_sql())

	paginator := builder.get_page[entities.DictKey](count, query_dto.page_num, query_dto.page_size,
		users)!

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

	paginator := builder.get_page[entities.DictValue](count, query_dto.page_num, query_dto.page_size,
		users)!

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

	mut builder := entities.new_builder(true)
	builder.model[entities.Config]()
	mut where := []string{}

	if query_dto.config_key.len > 0 {
		where << "config_key LIKE '%${query_dto.config_key}%'"
	}

	builder.limit(10)
	builder.where(where.join(' AND '))
	count := db.q_int(builder.to_sql(true))
	users, _ := db.exec(builder.to_sql())

	paginator := builder.get_page[entities.Config](count, query_dto.page_num, query_dto.page_size,
		users)!
	resp_success[entities.Paginator[entities.Config]](mut ctx, data: paginator)!
}

pub fn config_add(mut ctx very.Context) ! {
	value := ctx.body_parse[entities.Config]()!
	sql ctx.db {
		insert value into entities.Config
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn config_edit(mut ctx very.Context) ! {
	value := ctx.body_parse[entities.Config]()!
	sql ctx.db {
		update entities.Config set config_key = value.config_key, config_name = value.config_name,
		remark = value.remark, config_value = value.config_value, update_time = time.now().custom_format(time_format)
		where id == value.id
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn file_query_page(mut ctx very.Context) ! {
	query_dto := ctx.body_parse[dto.FileDto]()!
	db := ctx.di.get[sqlite.DB]('db')!

	mut builder := entities.new_builder(true)
	builder.model[entities.File]()
	mut where := []string{}

	if query_dto.file_key.len > 0 {
		where << "file_key like '%${query_dto.file_key}%'"
	}

	if query_dto.file_name.len > 0 {
		where << "file_name like '%${query_dto.file_name}%'"
	}

	if query_dto.creator_name.len > 0 {
		where << "creator_name like '%${query_dto.creator_name}%'"
	}

	if query_dto.folder_type > 0 {
		where << 'folder_type = ${query_dto.folder_type}'
	}

	if query_dto.create_time_begin.len > 0 {
		where << "(create_time >= '${query_dto.create_time_begin}' AND create_time <= '${query_dto.create_time_end}')"
	}

	builder.where(where.join(' AND '))
	builder.order_by_desc('id')
	builder.limit(10)

	count := db.q_int(builder.to_sql(true))
	users, _ := db.exec(builder.to_sql())

	paginator := builder.get_page[entities.File](count, query_dto.page_num, query_dto.page_size,
		users)!
	resp_success[entities.Paginator[entities.File]](mut ctx, data: paginator)!
}

pub fn file_upload(mut ctx very.Context) ! {
	folder := ctx.query('folder')
	ctx.parse_form()!
	files := ctx.file('file')!
	if files.len == 0 {
		return error('no file')
	}

	upload_file := files.first()
	save_file_name := 'uploads/${upload_file.filename}'
	os.mkdir('uploads')!
	os.write_file(save_file_name, upload_file.data)!

	login_user_id := ctx.value('user_id')! as int

	users := sql ctx.db {
		select from entities.Employee where id == login_user_id
	}!
	if users.len == 0 {
		return error('no login user')
	}

	mut file := entities.File{
		folder_type: folder.int()
		file_name: upload_file.filename
		file_type: upload_file.content_type
		file_key: save_file_name
		file_size: upload_file.data.len
		creator_id: login_user_id
		creator_name: users.first().actual_name
		create_time: time.now().custom_format(time_format)
		update_time: time.now().custom_format(time_format)
	}

	sql ctx.db {
		insert file into entities.File
	}!
	file.id = ctx.db.last_id()

	resp_success[entities.File](mut ctx, data: file)!
}

pub fn table_column_get(mut ctx very.Context) ! {
	table_id := ctx.param('table_id').int()
	tables := sql ctx.db {
		select from entities.TableColumn where table_id == table_id limit 1
	}!

	mut column := dto.TableColumnGetColumnsResponseDto{}

	if tables.len > 0 {
		column.table_id = tables.first().table_id
		column.columns = json.decode([]dto.TableColumnItem, tables.first().columns)!
		column.id = tables.first().id

		resp_success[dto.TableColumnGetColumnsResponseDto](mut ctx, data: column)!
	} else {
		resp_success[dto.TableColumnGetColumnsResponseDto](mut ctx, data: column)!
	}
}

pub fn table_column_update(mut ctx very.Context) ! {
	table_column_dto := ctx.body_parse[dto.TableColumnDto]()!
	tables := sql ctx.db {
		select from entities.TableColumn where table_id == table_column_dto.table_id limit 1
	}!
	column := json.encode(table_column_dto.column_list)
	if tables.len == 0 {
		mut table := entities.TableColumn{
			user_id: ctx.value('user_id')! as int
			user_type: 0
			table_id: table_column_dto.table_id
			columns: column
			update_time: time.now().custom_format(time_format)
			create_time: time.now().custom_format(time_format)
		}
		sql ctx.db {
			insert table into entities.TableColumn
		}!
	} else {
		sql ctx.db {
			update entities.TableColumn set columns = column, update_time = time.now().custom_format(time_format)
			where table_id == table_column_dto.table_id
		}!
	}

	resp_success[string](mut ctx, data: '')!
}

pub fn help_doc_query(mut ctx very.Context) ! {
}
