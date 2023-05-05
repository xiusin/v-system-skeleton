module handlers

import xiusin.very
import entities
import dto
import time
import os
import json
import services
import crypto.md5

pub fn dict_key_query(mut ctx very.Context) ! {
	paginator := services.support_dict_key_query(mut ctx)!
	resp_success[entities.Paginator[entities.DictKey]](mut ctx, data: paginator)!
}

pub fn dict_key_delete(mut ctx very.Context) ! {
	ids := ctx.body_parse[[]int]()!
	for id in ids {
		sql ctx.db {
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

	sql ctx.db {
		insert key into entities.DictKey
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn dict_key_edit(mut ctx very.Context) ! {
	key := ctx.body_parse[entities.DictKey]()!
	check_entity_exists[entities.DictKey](mut ctx, 'id <> ${key.id}', "key_code = '${key.key_code}'")!
	sql ctx.db {
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
		sql ctx.db {
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

	sql ctx.db {
		insert value into entities.DictValue
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn dict_value_edit(mut ctx very.Context) ! {
	mut value := ctx.body_parse[entities.DictValue]()!
	check_entity_exists[entities.DictValue](mut ctx, 'id <> ${value.id}', 'dict_key_id = ${value.dict_key_id}',
		"value_code = '${value.value_code}'")!

	sql ctx.db {
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

	sql ctx.db {
		insert value into entities.Config
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn config_edit(mut ctx very.Context) ! {
	mut value := ctx.body_parse[entities.Config]()!

	check_entity_exists[entities.Config](mut ctx, 'id <> ${value.id}', "config_key = '${value.config_key}' OR config_name = '${value.config_name}'")!
	value.update_time = time.now().custom_format(time_format)

	sql ctx.db {
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
	folder := ctx.query('folder')
	ctx.parse_form()!
	mut files_ := ctx.file('file')!
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
	user := services.employee_info(ctx.db, ctx.value('user_id')! as int)!

	mut files := sql ctx.db {
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

		sql ctx.db {
			insert file into entities.File
		}!
		file.id = ctx.db.last_id()

		files << file
	}

	resp_success[entities.File](mut ctx, data: files.first())!
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
	}
	resp_success[dto.TableColumnGetColumnsResponseDto](mut ctx, data: column)!
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

	login_user := services.employee_info(ctx.db, feedback.user_id)!
	feedback.user_name = login_user.actual_name

	sql ctx.db {
		insert feedback into entities.Feedback
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn change_log_add(mut ctx very.Context) ! {
	mut change_log := ctx.body_parse[entities.ChangeLog]()!
	change_log.create_time = time.now().custom_format(time_format)
	change_log.update_time = time.now().custom_format(time_format)
	sql ctx.db {
		insert change_log into entities.ChangeLog
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn change_log_update(mut ctx very.Context) ! {
	mut change_log := ctx.body_parse[entities.ChangeLog]()!
	sql ctx.db {
		update entities.ChangeLog set version = change_log.version, @type = change_log.@type,
		public_date = change_log.public_date, publish_author = change_log.publish_author,
		content = change_log.content, link = change_log.link, update_time = time.now().custom_format(time_format)
		where id == change_log.id
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn change_log_delete(mut ctx very.Context) ! {
	id := ctx.param('id').int()
	sql ctx.db {
		delete from entities.ChangeLog where id == id
	}!
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
	sql ctx.db {
		insert catalog into entities.HelpDocCatalog
	}!
	resp_success[string](mut ctx, data: '')!
}

pub fn help_doc_catalog_get_all(mut ctx very.Context) ! {
	catalogs := sql ctx.db {
		select from entities.HelpDocCatalog order by sort desc
	}!
	resp_success[[]entities.HelpDocCatalog](mut ctx, data: catalogs)!
}

// code_generator_query_table_list 查询数据表列表  sqlite or mysql
pub fn code_generator_query_table_list(mut ctx very.Context) ! {
}

pub fn code_generator_query_table_column(mut ctx very.Context) ! {
}

pub fn code_generator_config_query(mut ctx very.Context) ! {
}

pub fn help_doc_query(mut ctx very.Context) ! {
}

pub fn help_doc_catalog_update(mut ctx very.Context) ! {
	mut catalog := ctx.body_parse[entities.HelpDocCatalog]()!
	sql ctx.db {
		update entities.HelpDocCatalog set name = catalog.name, parent_id = catalog.parent_id,
		sort = catalog.sort, update_time = time.now().custom_format(time_format) where id == catalog.id
	}!
	resp_success[string](mut ctx, data: '')!
}
