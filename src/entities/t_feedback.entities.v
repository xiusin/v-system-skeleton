module entities

[table: 't_feedback']
pub struct Feedback {
pub mut:
	id                  int    [json: 'feedbackId'; primary; sql: serial]
	feedback_content    string [json: 'feedbackContent']
	feedback_attachment string [json: 'feedbackAttachment']
	user_id             int    [json: 'userId']
	user_type           int    [json: 'userType']
	user_name           string [json: 'userName']
	update_time         string [default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time         string [default: 'CURRENT_TIMESTAMP'; json: 'createTime']
}
