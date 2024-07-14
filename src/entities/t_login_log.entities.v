module entities

@[table: 't_login_log']
pub struct LoginLog {
pub mut:
	id           int    @[json: 'loginLogId'; primary; sql: serial]
	user_id      int    @[json: 'userId']
	user_type    int    @[json: 'userType']
	user_name    string @[json: 'userName']
	login_ip     string @[json: 'loginIp']
	user_agent   string @[json: 'userAgent']
	login_result int    @[json: 'loginResult']
	remark       string
	update_time  string @[default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time  string @[default: 'CURRENT_TIMESTAMP'; json: 'createTime']
}
