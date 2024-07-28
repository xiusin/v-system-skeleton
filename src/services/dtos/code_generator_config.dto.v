module dtos

pub struct CodeGeneratorConfigDto {
pub mut:
	id                int
	table_name        string                             @[json: 'tableName']
	basic             CodeGeneratorConfigBasic
	fields            []CodeGeneratorConfigFields
	insert_and_update CodeGeneratorConfigInsertAndUpdate @[json: 'insertAndUpdate']
	delete_info       CodeGeneratorConfigDeleteInfo      @[json: 'deleteInfo']
	query_fields      []CodeGeneratorConfigQueryFields   @[json: 'queryFields']
	table_fields      []CodeGeneratorConfigTableFields   @[json: 'tableFields']
	update_time       string                             @[default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time       string                             @[default: 'CURRENT_TIMESTAMP'; json: 'createTime']
}

pub struct CodeGeneratorConfigField {
pub mut:
	column_name     string @[json: 'columnName']
	front_component string @[json: 'frontComponent']
	insert_flag     bool   @[json: 'insertFlag']
	required_flag   bool   @[json: 'requiredFlag']
	update_flag     bool   @[json: 'updateFlag']
}

pub struct CodeGeneratorConfigInsertAndUpdate {
pub mut:
	count_per_line               int                        @[json: 'countPerLine']
	field_list                   []CodeGeneratorConfigField @[json: 'fieldList']
	is_support_insert_and_update bool                       @[json: 'isSupportInsertAndUpdate']
	page_type                    string                     @[json: 'pageType']
	width                        string                     @[json: 'width']
}

pub struct CodeGeneratorConfigTableFields {
pub mut:
	column_name   string @[json: 'columnName']
	ellipsis_flag bool   @[json: 'ellipsisFlag']
	field_name    string @[json: 'fieldName']
	label         string
	show_flag     string
	width         string
}

pub struct CodeGeneratorConfigQueryFields {
pub mut:
	field_name      string @[json: 'fieldName']
	label           string
	query_type_enum string @[json: 'queryTypeEnum']
	width           string
}

pub struct CodeGeneratorConfigFields {
pub mut:
	auto_increase_flag bool   @[json: 'autoIncreaseFlag']
	column_comment     string @[json: 'columnComment']
	column_name        string @[json: 'columnName']
	// dict               string
	// enum_name          string
	field_name       string @[json: 'fieldName']
	java_type        string @[json: 'javaType']
	js_type          string @[json: 'jsType']
	label            string
	primary_key_flag bool   @[json: 'primaryKeyFlag']
}

pub struct CodeGeneratorConfigDeleteInfo {
pub mut:
	delete_enum           string @[json: 'deleteEnum']
	is_physically_deleted bool   @[json: 'isPhysicallyDeleted']
	is_support_delete     bool   @[json: 'isSupportDelete']
}

pub struct CodeGeneratorConfigBasic {
pub mut:
	backend_author    string @[json: 'backendAuthor']
	backend_date      string @[json: 'backendDate']
	copyright         string
	description       string
	front_author      string @[json: 'frontAuthor']
	front_date        string @[json: 'frontDate']
	java_package_name string @[json: 'javaPackageName']
	module_name       string @[json: 'moduleName']
}
