module entities

[table: 't_access_log']
pub struct AccessLog {
pub mut:
	id                int    [json: 'operateLogId'; primary; sql: serial]
	operate_user_id   int    [json: 'operateUserId']
	operate_user_type int    [json: 'operateUserType']
	operate_user_name string [json: 'operateUserName']
	@module           string
	content           string
	url               string
	method            string
	param             string
	ip                string
	user_agent        string [json: 'userAgent']
	success_flag      bool   [json: 'successFlag']
	fail_reason       string [json: 'failReason']
	update_time       string [default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time       string [default: 'CURRENT_TIMESTAMP'; json: 'createTime']
}
