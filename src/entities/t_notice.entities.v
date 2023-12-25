module entities

@[table: 't_notice']
pub struct Notice {
pub mut:
	id                     int    @[json: 'noticeId'; primary; sql: serial]
	notice_type_id         int    @[json: 'noticeTypeId']
	title                  string
	all_visible_flag       i8     @[json: 'allVisibleFlag']
	scheduled_publish_flag i8     @[json: 'scheduledPublishFlag']
	publish_time           string @[json: 'publishTime']
	content_text           string @[json: 'contentText']
	content_html           string @[json: 'contentHtml']
	attachment             string
	page_view_count        int    @[json: 'pageViewCount']
	user_view_count        int    @[json: 'userViewCount']
	source                 string
	author                 string
	document_number        string @[json: 'documentNumber']
	deleted_flag           i8     @[json: 'deletedFlag']
	create_user_id         int    @[json: 'createUserId']
	update_time            string @[default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time            string @[default: 'CURRENT_TIMESTAMP'; json: 'createTime']
}

@[table: 't_notice_type']
pub struct NoticeType {
pub mut:
	id               int    @[json: 'noticeId'; primary; sql: serial]
	notice_type_name int    @[json: 'noticeTypeName']
	update_time      string @[default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time      string @[default: 'CURRENT_TIMESTAMP'; json: 'createTime']
}
