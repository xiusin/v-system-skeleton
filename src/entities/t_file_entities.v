module entities

[table: 't_file']
pub struct File {
pub mut:
	id                int    [json: 'fileId'; primary; sql: serial]
	folder_type       int    [json: 'folderType']
	file_name         string [json: 'fileName']
	file_size         int    [json: 'fileSize']
	file_key          string [json: 'fileKey']
	file_type         string [json: 'fileType']
	creator_id        int    [json: 'creatorId']
	creator_user_type int    [json: 'creatorUserType']
	creator_name      string [json: 'creatorName']
	update_time       string [default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time       string [default: 'CURRENT_TIMESTAMP'; json: 'createTime']
}
