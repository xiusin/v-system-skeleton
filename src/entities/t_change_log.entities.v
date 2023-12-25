module entities

@[table: 't_change_log']
pub struct ChangeLog {
pub mut:
	id             int    @[json: 'changeLogId'; primary; sql: serial]
	version        string @[json: 'version']
	@type          int    @[json: 'type']
	public_date    string @[json: 'publicDate']
	publish_author string @[json: 'publishAuthor']
	content        string @[json: 'content']
	link           string @[json: 'link']
	update_time    string @[default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time    string @[default: 'CURRENT_TIMESTAMP'; json: 'createTime']
}
