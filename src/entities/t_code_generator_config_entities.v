module entities

[table: 't_code_generator_config']
pub struct CodeGeneratorConfig {
pub mut:
	id                int    [json: 'configId'; primary; sql: serial]
	table_name        string
	basic             string
	fields            string
	insert_and_update string
	delete_info       string
	query_fields      string
	detail            string
	update_time       string [default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time       string [default: 'CURRENT_TIMESTAMP'; json: 'createTime']
}

[table: 'sqlite_master']
pub struct SqliteMaster {
pub mut:
	@type    string
	name     string
	tbl_name string
	rootpage int
	sql      string
}

pub struct CodeGeneratorConfigTable {
pub mut:
	config_time   string [json: 'configTime']
	create_time   string [json: 'createTime']
	table_comment string [json: 'tableComment']
	table_name    string [json: 'tableName']
	update_time   string [json: 'updateTime']
}

pub struct CodeGeneratorConfigColumnSqlite {
pub mut:
	cid        int
	name       string
	@type      string
	notnull    int
	dflt_value string
	pk         int
}

pub struct CodeGeneratorConfigColumn {
pub mut:
	column_comment string [json: 'columnComment']
	column_key     string [json: 'columnKey']
	column_name    string [json: 'columnName']
	column_type    string [json: 'columnType']
	data_type      string [json: 'dataType']
	extra          string [json: 'extra']
	is_nullable    string [json: 'isNullable']
}
