module routers

import handlers
import xiusin.very
import middlewares

pub fn register_router(mut app very.Application) {
	app.use(middlewares.request_log, middlewares.cors, middlewares.query, middlewares.auth)

	app.statics('/uploads', 'uploads')
	app.statics('/manages', 'typescript-ant-design-vue3/dist/', 'index.html')

	app.post('/login', handlers.login)
	app.get('/login/getLoginInfo', handlers.get_login_info)
	app.post('/changeLog/add', handlers.change_log_add)
	app.post('/changeLog/update', handlers.change_log_update)
	app.get('/changeLog/delete/:id', handlers.change_log_delete)
	app.post('/changeLog/batchDelete', handlers.change_log_batch_delete)
	app.post('/changeLog/queryPage', handlers.change_log_query_page)

	mut role_api := app.group('/role')
	{
		role_api.get('/getAll', handlers.role_get_all)
		role_api.get('/menu/getRoleSelectedMenu/:id', handlers.role_get_role_selected_menu)
		role_api.get('/dataScope/getRoleDataScopeList/:id', handlers.get_role_data_scope_list)
		role_api.post('/employee/queryEmployee', handlers.role_query_employee)
		role_api.get('/employee/getAllEmployeeByRoleId/:id', handlers.role_query_employee)
		role_api.get('/employee/removeEmployee', handlers.role_remove_employee)
		role_api.post('/employee/batchRemoveRoleEmployee', handlers.role_batch_remove_employee)
		role_api.post('/employee/batchAddRoleEmployee', handlers.role_batch_add_employee)
		role_api.post('/menu/updateRoleMenu', handlers.update_role_menu)
		role_api.get('/delete/:id', handlers.role_delete)
		role_api.post('/update', handlers.role_update)
		role_api.post('/add', handlers.role_add)
	}
	mut department_api := app.group('/department')
	{
		department_api.get('/treeList', handlers.department_tree_list)
		department_api.get('/listAll', handlers.department_list_all)
		department_api.post('/update', handlers.department_update)
		department_api.post('/add', handlers.department_add)
	}
	mut menu_api := app.group('/menu')
	{
		menu_api.get('/query', handlers.menu_query)
		menu_api.get('/tree', handlers.menu_tree)
		menu_api.get('/batchDelete', handlers.menu_batch_delete)
		menu_api.post('/add', handlers.menu_add)
	}
	mut employee_api := app.group('/employee')
	{
		employee_api.post('/query', handlers.employee_query)
		employee_api.get('/queryAll', handlers.employee_query_all)
		employee_api.get('/update/password/reset/:id', handlers.employee_reset_password)
		employee_api.get('/update/disabled/:id', handlers.employee_update_disabled)
		employee_api.post('/update/password', handlers.employee_update_password)
		employee_api.post('/update', handlers.employee_update)
		employee_api.post('/add', handlers.employee_add)
		employee_api.post('/update/batch/delete', handlers.employee_delete)
		employee_api.post('/update/batch/department', handlers.employee_update_batch_department)
	}
	mut support_api := app.group('/support')
	{
		support_api.get('/dict/key/queryAll', handlers.dict_key_query_all)
		support_api.post('/dict/key/query', handlers.dict_key_query)
		support_api.post('/dict/key/edit', handlers.dict_key_edit)
		support_api.post('/dict/key/add', handlers.dict_key_add)
		support_api.post('/dict/key/delete', handlers.dict_key_delete)
		support_api.post('/dict/value/query', handlers.dict_value_query)
		support_api.post('/dict/value/edit', handlers.dict_value_edit)
		support_api.post('/dict/value/add', handlers.dict_value_add)
		support_api.post('/dict/value/delete', handlers.dict_value_delete)
		support_api.post('/config/query', handlers.config_query)
		support_api.post('/config/add', handlers.config_add)
		support_api.post('/config/update', handlers.config_edit)
		support_api.post('/file/upload', handlers.file_upload)
		support_api.post('/file/queryPage', handlers.file_query_page)
		support_api.post('/tableColumn/update', handlers.table_column_update)
		support_api.get('/tableColumn/getColumns/:table_id', handlers.table_column_get)
		support_api.get('/helpDoc/queryHelpDocByRelationId/:id', handlers.help_doc_query)
		support_api.post('/helpDoc/helpDocCatalog/update', handlers.help_doc_catalog_update)
		support_api.post('/helpDoc/helpDocCatalog/add', handlers.help_doc_catalog_add)
		support_api.get('/helpDoc/helpDocCatalog/getAll', handlers.help_doc_catalog_get_all)
		support_api.post('/codeGenerator/table/queryTableList', handlers.code_generator_query_table_list)
		support_api.get('/codeGenerator/table/getTableColumns/:tbl_name', handlers.code_generator_query_table_column)
		support_api.get('/codeGenerator/table/getConfig/:tbl_name', handlers.code_generator_table_get_config)
		support_api.post('/codeGenerator/table/updateConfig', handlers.code_generator_table_update_config)
		support_api.post('/feedback/query', handlers.feedback_query)
		support_api.post('/feedback/add', handlers.feedback_add)
	}
	app.mount[handlers.App]() or {}
}
