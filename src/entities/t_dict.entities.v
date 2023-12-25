module entities

@[table: 't_dict_key']
pub struct DictKey {
pub mut:
	id           int    @[json: 'dictKeyId'; primary; sql: serial]
	key_code     string @[json: 'keyCode']
	key_name     string @[json: 'keyName']
	remark       string
	deleted_flag int    @[json: 'deletedFlag']
	update_time  string @[default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time  string @[default: 'CURRENT_TIMESTAMP'; json: 'createTime']
}

@[table: 't_dict_value']
pub struct DictValue {
pub mut:
	id           int    @[json: 'dictValueId'; primary; sql: serial]
	dict_key_id  int    @[json: 'dictKeyId']
	value_code   string @[json: 'valueCode']
	value_name   string @[json: 'valueName']
	remark       string
	sort         int
	deleted_flag int    @[json: 'deletedFlag']
	update_time  string @[default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time  string @[default: 'CURRENT_TIMESTAMP'; json: 'createTime']
}
