module entities

@[table: 't_help_doc']
pub struct HelpDoc {
pub mut:
	id                  int    @[json: 'feedbackId'; primary; sql: serial]
	help_doc_catalog_id int    @[json: 'helpDocCatalogId']
	content_html        string @[json: 'contentHtml']
	content_text        string @[json: 'contentText']
	author              string
	update_time         string @[default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time         string @[default: 'CURRENT_TIMESTAMP'; json: 'createTime']
}

@[table: 't_help_doc_catalog']
pub struct HelpDocCatalog {
pub mut:
	id          int    @[json: 'helpDocCatalogId'; primary; sql: serial]
	name        string
	parent_id   int    @[json: 'parentId']
	sort        int
	update_time string @[default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time string @[default: 'CURRENT_TIMESTAMP'; json: 'createTime']
}
