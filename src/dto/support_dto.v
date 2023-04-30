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
