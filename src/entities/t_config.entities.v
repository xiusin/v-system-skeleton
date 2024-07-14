module entities

@[table: 't_config']
pub struct Config {
pub mut:
	id           int    @[json: 'configId'; primary; sql: serial]
	config_key   string @[json: 'configKey']
	config_name  string @[json: 'configName']
	config_value string @[json: 'configValue']
	remark       string
	update_time  string @[default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time  string @[default: 'CURRENT_TIMESTAMP'; json: 'createTime']
}
