module dtos

pub struct NoticeRequestDto {
pub mut:
	create_time_begin  string @[json: 'createTimeBegin']
	create_time_end    string @[json: 'createTimeEnd']
	create_user_id     string @[json: 'createUserId']
	deleted_flag       ?bool  @[json: 'deletedFlag']
	document_number    string @[json: 'documentNumber']
	keywords           string @[json: 'keywords']
	notice_type_id     int    @[json: 'noticeTypeId']
	page_num           int    @[json: 'pageNum']
	page_size          int    @[json: 'pageSize']
	publish_time_begin string @[json: 'publishTimeBegin']
	publish_time_end   string @[json: 'publishTimeEnd']
}
