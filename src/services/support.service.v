module services

import entities
import xiusin.very
import dto
import db.sqlite

pub fn support_config_query(mut ctx very.Context) !entities.Paginator[entities.Config] {
	return base_query[entities.Config](mut ctx, fn [mut ctx] () ![]string {
		query_dto := ctx.body_parse[dto.ConfigDto]()!
		mut where := []string{}
		if query_dto.config_key.len > 0 {
			where << "config_key LIKE '%${query_dto.config_key}%'"
		}
		return where
	})!
}

pub fn support_change_log_query(mut ctx very.Context) !entities.Paginator[entities.ChangeLog] {
	return base_query[entities.ChangeLog](mut ctx, fn [mut ctx] () ![]string {
		query_dto := ctx.body_parse[dto.ChangeLogDto]()!
		mut where := []string{}

		if query_dto.@type > 0 {
			where << 'type = ${query_dto.@type}'
		}
		if query_dto.keyword.len > 0 {
			where << 'content like "%${query_dto.keyword}%"'
		}
		if query_dto.create_time.len > 0 {
			where << '(create_time >= "${query_dto.create_time}" AND create_time <= "${query_dto.create_time} 23:59:59")'
		}
		if query_dto.public_date_begin.len > 0 {
			where << '(public_date >= "${query_dto.public_date_begin}" OR public_date <= "${query_dto.public_date_end}")'
		}

		return where
	}, 'public_date DESC')!
}

pub fn support_login_log_query(mut ctx very.Context) !entities.Paginator[entities.LoginLog] {
	return base_query[entities.LoginLog](mut ctx, fn [mut ctx] () ![]string {
		query_dto := ctx.body_parse[dto.LoginLogDto]()!
		mut where := []string{}
		if query_dto.start_date.len > 0 {
			where << '(create_time >= "${query_dto.start_date}" AND create_time <= "${query_dto.end_date} 23:59:59")'
		}
		if query_dto.user_name.len > 0 {
			where << '(user_name like "%' + query_dto.user_name + '%")'
		}
		if query_dto.ip.len > 0 {
			where << '(ip like "%' + query_dto.ip + '%")'
		}

		return where
	})!
}

pub fn support_feedback_query(mut ctx very.Context) !entities.Paginator[entities.Feedback] {
	return base_query[entities.Feedback](mut ctx, fn [mut ctx] () ![]string {
		query_dto := ctx.body_parse[dto.FeedbackDto]()!
		mut where := []string{}
		if query_dto.search_word.len > 0 {
			where << 'feedback_content like "%${query_dto.search_word}%"'
		}
		if query_dto.start_date.len > 0 {
			where << '(create_time >= "${query_dto.start_date} 00:00:00" AND create_time <= "${query_dto.end_date} 23:59:59")'
		}
		return where
	})!
}

pub fn support_dict_value_query(mut ctx very.Context) !entities.Paginator[entities.DictValue] {
	return base_query[entities.DictValue](mut ctx, fn [mut ctx] () ![]string {
		query_dto := ctx.body_parse[dto.DictDto]()!
		mut where := []string{}
		if query_dto.dict_key_id > 0 {
			where << 'id = ${query_dto.dict_key_id}'
		}
		return where
	})!
}

pub fn support_dict_key_query(mut ctx very.Context) !entities.Paginator[entities.DictKey] {
	return base_query[entities.DictKey](mut ctx, fn [mut ctx] () ![]string {
		mut where := []string{}
		query_dto := ctx.body_parse[dto.DictDto]()!
		if query_dto.search_word.len > 0 {
			where << "key_code like '%${query_dto.search_word}%' or key_name like '%${query_dto.search_word}%'"
		}
		return where
	})!
}

pub fn support_dict_key_all(mut ctx very.Context) ![]entities.DictKey {
	db := ctx.di[sqlite.DB]('db')!
	return sql db {
		select from entities.DictKey order by id desc
	}!
}

pub fn support_file_query(mut ctx very.Context) !entities.Paginator[entities.File] {
	return base_query[entities.File](mut ctx, fn [mut ctx] () ![]string {
		mut where := []string{}
		query_dto := ctx.body_parse[dto.FileDto]()!
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
		return where
	})!
}
