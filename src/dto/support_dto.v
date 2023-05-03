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

pub struct TableColumnDto {
pub mut:
	table_id    int               [json: 'tableId']
	column_list []TableColumnItem [json: 'columnList']
}

pub struct TableColumnItem {
pub mut:
	column_key string [json: 'columnKey']
	show_flag  bool   [json: 'showFlag']
	sort       int    [json: 'sort']
	width      int    [json: 'width']
}

pub struct TableColumnGetColumnsResponseDto {
pub mut:
	id        int               [json: 'tableColumnId'; primary; sql: serial]
	user_id   int               [json: 'userId']
	user_type int               [json: 'userType']
	table_id  int               [json: 'tableId']
	columns   []TableColumnItem
}
