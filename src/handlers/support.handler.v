module handlers

import xiusin.very
import entities
import dto
import time
import os
import json
import services
import crypto.md5
import math
import db.sqlite

pub fn dict_key_query(mut ctx very.Context) ! {
	paginator := services.support_dict_key_query(mut ctx)!
	resp_success[entities.Paginator[entities.DictKey]](mut ctx, data: paginator)!
}

pub fn dict_key_query_all(mut ctx very.Context) ! {
	resp_success[[]entities.DictKey](mut ctx, data: services.support_dict_key_all(mut ctx)!)!
}

pub fn dict_key_delete(mut ctx very.Context) ! {
	ids := ctx.body_parse[[]int]()!
	for id in ids {
		db := ctx.di[sqlite.DB]('db')!
		sql db {
			delete from entities.DictKey where id == id
			delete from entities.DictValue where dict_key_id == id
		}!
	}
	resp_success[string](mut ctx, data: '')!
}

pub fn dict_key_add(mut ctx very.Context) ! {
	mut key := ctx.body_parse[entities.DictKey]()!

	check_entity_exists[entities.DictKey](mut ctx, "key_code = '${key.key_code}'")!
	key.create_time = time.now().custom_format(time_format)
	key.update_time = time.now().custom_format(time_format)

	db := ctx.di[sqlite.DB]('db')!
	sql db {
		insert key into entities.DictKey
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn dict_key_edit(mut ctx very.Context) ! {
	key := ctx.body_parse[entities.DictKey]()!
	check_entity_exists[entities.DictKey](mut ctx, 'id <> ${key.id}', "key_code = '${key.key_code}'")!
	db := ctx.di[sqlite.DB]('db')!
	sql db {
		update entities.DictKey set key_code = key.key_code, key_name = key.key_name, remark = key.remark,
		update_time = time.now().custom_format(time_format) where id == key.id
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn dict_value_query(mut ctx very.Context) ! {
	paginator := services.support_dict_value_query(mut ctx)!
	resp_success[entities.Paginator[entities.DictValue]](mut ctx, data: paginator)!
}

pub fn dict_value_delete(mut ctx very.Context) ! {
	ids := ctx.body_parse[[]int]()!
	for id in ids {
		db := ctx.di[sqlite.DB]('db')!
		sql db {
			delete from entities.DictValue where id == id
		}!
	}
	resp_success[string](mut ctx, data: '')!
}

pub fn dict_value_add(mut ctx very.Context) ! {
	mut value := ctx.body_parse[entities.DictValue]()!

	check_entity_exists[entities.DictValue](mut ctx, 'dict_key_id = ${value.dict_key_id}',
		"value_code = '${value.value_code}'")!

	value.create_time = time.now().custom_format(time_format)
	value.update_time = time.now().custom_format(time_format)

	db := ctx.di[sqlite.DB]('db')!
	sql db {
		insert value into entities.DictValue
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn dict_value_edit(mut ctx very.Context) ! {
	mut value := ctx.body_parse[entities.DictValue]()!
	check_entity_exists[entities.DictValue](mut ctx, 'id <> ${value.id}', 'dict_key_id = ${value.dict_key_id}',
		"value_code = '${value.value_code}'")!

	db := ctx.di[sqlite.DB]('db')!
	sql db {
		update entities.DictValue set value_code = value.value_code, value_name = value.value_name,
		remark = value.remark, dict_key_id = value.dict_key_id, update_time = time.now().custom_format(time_format)
		where id == value.id
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn config_query(mut ctx very.Context) ! {
	paginator := services.support_config_query(mut ctx)!
	resp_success[entities.Paginator[entities.Config]](mut ctx, data: paginator)!
}

pub fn config_add(mut ctx very.Context) ! {
	mut value := ctx.body_parse[entities.Config]()!
	check_entity_exists[entities.Config](mut ctx, "config_key = '${value.config_key}' OR config_name = '${value.config_name}'")!
	value.create_time = time.now().custom_format(time_format)
	value.update_time = time.now().custom_format(time_format)

	db := ctx.di[sqlite.DB]('db')!
	sql db {
		insert value into entities.Config
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn config_edit(mut ctx very.Context) ! {
	mut value := ctx.body_parse[entities.Config]()!

	check_entity_exists[entities.Config](mut ctx, 'id <> ${value.id}', "config_key = '${value.config_key}' OR config_name = '${value.config_name}'")!
	value.update_time = time.now().custom_format(time_format)

	db := ctx.di[sqlite.DB]('db')!
	sql db {
		update entities.Config set config_key = value.config_key, config_name = value.config_name,
		remark = value.remark, config_value = value.config_value, update_time = time.now().custom_format(time_format)
		where id == value.id
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn file_query_page(mut ctx very.Context) ! {
	paginator := services.support_file_query(mut ctx)!
	resp_success[entities.Paginator[entities.File]](mut ctx, data: paginator)!
}

pub fn file_upload(mut ctx very.Context) ! {
	folder := ctx.req.query('folder')
	ctx.req.parse_form()!
	mut files_ := ctx.req.file('file')!
	if files_.len == 0 {
		return error('不存在文件file')
	}

	upload_file := files_.first()

	ext := upload_file.filename.split('.').last()
	hash := md5.hexhash(upload_file.data)

	filename := '${hash}.${ext}'

	save_file_name := 'uploads/${filename}'
	os.mkdir('uploads') or {}
	os.write_file(save_file_name, upload_file.data)!
	user := services.employee_info(ctx.di[sqlite.DB]('db')!, ctx.value('user_id')! as int)!

	db := ctx.di[sqlite.DB]('db')!
	mut files := sql db {
		select from entities.File where file_key == save_file_name
	}!

	if files.len == 0 {
		mut file := entities.File{
			folder_type: folder.int()
			file_name: upload_file.filename
			file_type: upload_file.content_type
			file_key: save_file_name
			file_size: upload_file.data.len
			creator_id: user.id
			creator_name: user.actual_name
			create_time: time.now().custom_format(time_format)
			update_time: time.now().custom_format(time_format)
			md5: hash
		}

		sql db {
			insert file into entities.File
		}!

		file.id = ctx.di[sqlite.DB]('db')!.last_id()
		files << file
	}

	resp_success[entities.File](mut ctx, data: files.first())!
}

pub fn table_column_get(mut ctx very.Context) ! {
	table_id := ctx.param('table_id').int()
	db := ctx.di[sqlite.DB]('db')!
	tables := sql db {
		select from entities.TableColumn where table_id == table_id limit 1
	}!

	mut column := dto.TableColumnGetColumnsResponseDto{}

	if tables.len > 0 {
		column.table_id = tables.first().table_id
		column.columns = json.decode([]dto.TableColumnItem, tables.first().columns)!
		column.id = tables.first().id
	}
	resp_success[dto.TableColumnGetColumnsResponseDto](mut ctx, data: column)!
}

pub fn table_column_update(mut ctx very.Context) ! {
	table_column_dto := ctx.body_parse[dto.TableColumnDto]()!
	db := ctx.di[sqlite.DB]('db')!
	tables := sql db {
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
		sql db {
			insert table into entities.TableColumn
		}!
	} else {
		sql db {
			update entities.TableColumn set columns = column, update_time = time.now().custom_format(time_format)
			where table_id == table_column_dto.table_id
		}!
	}

	resp_success[string](mut ctx, data: '')!
}

pub fn feedback_query(mut ctx very.Context) ! {
	paginator := services.support_feedback_query(mut ctx)!
	resp_success[entities.Paginator[entities.Feedback]](mut ctx, data: paginator)!
}

pub fn feedback_add(mut ctx very.Context) ! {
	mut feedback_dto := ctx.body_parse[dto.FeedbackAddDto]()!
	mut feedback := entities.Feedback{
		create_time: time.now().custom_format(time_format)
		update_time: time.now().custom_format(time_format)
		user_id: ctx.value('user_id')! as int
		feedback_content: feedback_dto.feedback_content
		feedback_attachment: json.encode(feedback_dto.feedback_attachment)
	}

	login_user := services.employee_info(ctx.di[sqlite.DB]('db')!, feedback.user_id)!
	feedback.user_name = login_user.actual_name

	db := ctx.di[sqlite.DB]('db')!
	sql db {
		insert feedback into entities.Feedback
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn change_log_add(mut ctx very.Context) ! {
	mut change_log := ctx.body_parse[entities.ChangeLog]()!
	change_log.create_time = time.now().custom_format(time_format)
	change_log.update_time = time.now().custom_format(time_format)
	db := ctx.di[sqlite.DB]('db')!
	sql db {
		insert change_log into entities.ChangeLog
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn change_log_update(mut ctx very.Context) ! {
	mut change_log := ctx.body_parse[entities.ChangeLog]()!
	db := ctx.di[sqlite.DB]('db')!
	sql db {
		update entities.ChangeLog set version = change_log.version, @type = change_log.@type,
		public_date = change_log.public_date, publish_author = change_log.publish_author,
		content = change_log.content, link = change_log.link, update_time = time.now().custom_format(time_format)
		where id == change_log.id
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn change_log_delete(mut ctx very.Context) ! {
	id := ctx.param('id').int()
	db := ctx.di[sqlite.DB]('db')!
	sql db {
		delete from entities.ChangeLog where id == id
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn change_log_batch_delete(mut ctx very.Context) ! {
	mut ids := ctx.body_parse[[]int]()!
	for id in ids {
		db := ctx.di[sqlite.DB]('db')!
		sql db {
			delete from entities.ChangeLog where id == id
		}!
	}
	resp_success[string](mut ctx, data: '')!
}

pub fn change_log_query_page(mut ctx very.Context) ! {
	paginator := services.support_change_log_query(mut ctx)!
	resp_success[entities.Paginator[entities.ChangeLog]](mut ctx, data: paginator)!
}

pub fn help_doc_catalog_add(mut ctx very.Context) ! {
	mut catalog := ctx.body_parse[entities.HelpDocCatalog]()!
	catalog.create_time = time.now().custom_format(time_format)
	catalog.update_time = time.now().custom_format(time_format)
	db := ctx.di[sqlite.DB]('db')!
	sql db {
		insert catalog into entities.HelpDocCatalog
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn help_doc_catalog_get_all(mut ctx very.Context) ! {
	db := ctx.di[sqlite.DB]('db')!
	catalogs := sql db {
		select from entities.HelpDocCatalog order by sort desc
	}!
	resp_success[[]entities.HelpDocCatalog](mut ctx, data: catalogs)!
}

// code_generator_query_table_list
pub fn code_generator_query_table_list(mut ctx very.Context) ! {
	query_dto := ctx.body_parse[dto.CodeGeneratorTableListDto]()!
	offset := query_dto.page_size * (query_dto.page_num - 1)
	sql_ := "select * from sqlite_master where type = 'table' and name != 'sqlite_sequence' order by name limit ${offset},${query_dto.page_size}"
	count_sql := "select count(*) AS total from sqlite_master where type = 'table' and name != 'sqlite_sequence'"

	mut builder := entities.new_builder(true)
	tables := builder.query_raw[entities.SqliteMaster](mut ctx, sql_)!
	db := ctx.di[sqlite.DB]('db')!
	count := db.q_int(count_sql)!

	mut cgct := []entities.CodeGeneratorConfigTable{cap: tables.len}
	for table in tables {
		cgct << entities.CodeGeneratorConfigTable{
			table_name: table.tbl_name
		}
	}

	paginator := entities.Paginator[entities.CodeGeneratorConfigTable]{
		total: count
		pages: int(math.ceil(f64(count) / f64(query_dto.page_size)))
		current_page: query_dto.page_num
		page_size: query_dto.page_size
		items: cgct
	}

	resp_success[entities.Paginator[entities.CodeGeneratorConfigTable]](mut ctx, data: paginator)!
}

pub fn code_generator_query_table_column(mut ctx very.Context) ! {
	tbl_name := ctx.param('tbl_name')
	mut builder := entities.new_builder(true)
	table_columns := builder.query_raw[entities.CodeGeneratorConfigColumnSqlite](mut ctx,
		'PRAGMA table_info(${tbl_name})')!

	mut columns := []entities.CodeGeneratorConfigColumn{cap: table_columns.len}

	for table_column in table_columns {
		columns << entities.CodeGeneratorConfigColumn{
			column_comment: ''
			column_key: if table_column.pk == 1 { 'PRI' } else { '' }
			column_name: table_column.name
			column_type: table_column.@type
			data_type: table_column.@type
			extra: table_column.dflt_value
			is_nullable: if table_column.notnull == 1 { 'YES' } else { 'NO' }
		}
	}
	resp_success[[]entities.CodeGeneratorConfigColumn](mut ctx, data: columns)!
}

pub fn code_generator_table_get_config(mut ctx very.Context) ! {
	tbl_name := ctx.param('tbl_name')
	db := ctx.di[sqlite.DB]('db')!
	mut cfg_arr := sql db {
		select from entities.CodeGeneratorConfig where table_name == tbl_name limit 1
	}!
	if cfg_arr.len == 0 {
		cfg_arr << entities.CodeGeneratorConfig{}
	}
	cfg := cfg_arr.first()

	response := dto.CodeGeneratorConfigDto{
		id: cfg.id
		table_name: cfg.table_name
		basic: json.decode(dto.CodeGeneratorConfigBasic, cfg.basic) or {
			dto.CodeGeneratorConfigBasic{
				backend_author: 'xiusin'
				backend_date: time.now().custom_format(time_format)
				copyright: 'copyright@xiusin'
				description: ''
				front_author: 'xiusin'
				front_date: time.now().custom_format(time_format)
				java_package_name: ''
				module_name: ''
			}
		}
		fields: json.decode([]dto.CodeGeneratorConfigFields, cfg.fields) or {
			[]dto.CodeGeneratorConfigFields{}
		}
		insert_and_update: json.decode(dto.CodeGeneratorConfigInsertAndUpdate, cfg.insert_and_update) or {
			dto.CodeGeneratorConfigInsertAndUpdate{}
		}
		delete_info: json.decode(dto.CodeGeneratorConfigDeleteInfo, cfg.delete_info) or {
			dto.CodeGeneratorConfigDeleteInfo{}
		}
		query_fields: json.decode([]dto.CodeGeneratorConfigQueryFields, cfg.query_fields) or {
			[]dto.CodeGeneratorConfigQueryFields{}
		}
		table_fields: json.decode([]dto.CodeGeneratorConfigTableFields, cfg.table_fields) or {
			[]dto.CodeGeneratorConfigTableFields{}
		}
		update_time: cfg.update_time
		create_time: cfg.create_time
	}

	resp_success[dto.CodeGeneratorConfigDto](mut ctx, data: response)!
}

pub fn code_generator_table_update_config(mut ctx very.Context) ! {
	query_dto := ctx.body_parse[dto.CodeGeneratorConfigDto]()!

	cfg := entities.CodeGeneratorConfig{
		table_name: query_dto.table_name
		basic: json.encode(query_dto.basic)
		fields: json.encode(query_dto.fields)
		insert_and_update: json.encode(query_dto.insert_and_update)
		delete_info: json.encode(query_dto.delete_info)
		query_fields: json.encode(query_dto.query_fields)
		table_fields: json.encode(query_dto.table_fields)
		update_time: time.now().custom_format(time_format)
		create_time: time.now().custom_format(time_format)
	}

	db := ctx.di[sqlite.DB]('db')!
	sql db {
		delete from entities.CodeGeneratorConfig where table_name == cfg.table_name
		insert cfg into entities.CodeGeneratorConfig
	}!

	resp_success[string](mut ctx, data: '')!
}

pub fn code_generator_code_preview(mut ctx very.Context) ! {
	_ = ctx.body_parse[dto.CodePreviewDto]()!

	resp_success[string](mut ctx, data: '')!
}

pub fn help_doc_query(mut ctx very.Context) ! {
}

pub fn login_log_page_query(mut ctx very.Context) ! {
	paginator := services.support_login_log_query(mut ctx)!
	resp_success[entities.Paginator[entities.LoginLog]](mut ctx, data: paginator)!
}

pub fn help_doc_catalog_update(mut ctx very.Context) ! {
	mut catalog := ctx.body_parse[entities.HelpDocCatalog]()!
	db := ctx.di[sqlite.DB]('db')!
	sql db {
		update entities.HelpDocCatalog set name = catalog.name, parent_id = catalog.parent_id,
		sort = catalog.sort, update_time = time.now().custom_format(time_format) where id == catalog.id
	}!
	resp_success[string](mut ctx, data: '')!
}
