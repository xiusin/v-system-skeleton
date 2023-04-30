module dto

pub struct DictDto {
pub mut:
	page_num    int    [json: 'pageNum']
	page_size   int    [json: 'pageSize']
	search_word string [json: 'searchWord']
	dict_key_id int    [json: 'dict_key_id']
}

pub struct ConfigDto {
pub mut:
	page_num   int    [json: 'pageNum']
	page_size  int    [json: 'pageSize']
	config_key string [json: 'configKey']
}

pub struct FileDto {
pub mut:
	page_num          int    [json: 'pageNum']
	page_size         int    [json: 'pageSize']
	file_key          string [json: 'fileKey']
	file_name         string [json: 'fileName']
	folder_type       int    [json: 'folderType']
	creator_name      string [json: 'creatorName']
	create_time_begin string [json: 'createTimeBegin']
	create_time_end   string [json: 'createTimeEnd']
}
