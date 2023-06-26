module entities

[table: 't_table_column']
pub struct TableColumn {
pub mut:
	id          int    [json: 'tableColumnId'; primary; sql: serial]
	user_id     int    [json: 'userId']
	user_type   int    [json: 'userType']
	table_id    int    [json: 'tableId']
	columns     string
	update_time string [default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time string [default: 'CURRENT_TIMESTAMP'; json: 'createTime']
}
