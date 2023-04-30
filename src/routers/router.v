module routers

import handlers
import xiusin.very
import middlewares

pub fn register_router(mut app very.Application) {
	app.use(middlewares.request_log, middlewares.cors, middlewares.auth)

	app.post('/login', handlers.login)
	app.get('/login/getLoginInfo', handlers.get_login_info)

	mut role_api := app.group('/role')
	{
		role_api.get('/getAll', handlers.role_get_all)
		role_api.get('/menu/getRoleSelectedMenu/:id', handlers.role_get_role_selected_menu)
		role_api.get('/dataScope/getRoleDataScopeList/:id', handlers.get_role_data_scope_list)
		role_api.post('/employee/queryEmployee', handlers.role_query_employee)
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
	}
	mut support_api := app.group('/support')
	{
		support_api.post('/dict/key/query', handlers.dict_key_query)
		support_api.post('/dict/key/edit', handlers.dict_key_edit)
		support_api.post('/dict/key/add', handlers.dict_key_add)
		support_api.post('/dict/key/delete', handlers.dict_key_delete)
		support_api.post('/dict/value/query', handlers.dict_value_query)
		support_api.post('/dict/value/edit', handlers.dict_value_edit)
		support_api.post('/dict/value/add', handlers.dict_value_add)
		support_api.post('/dict/value/delete', handlers.dict_value_delete)
		support_api.post('/config/query', handlers.config_query)
		support_api.post('/file/upload', handlers.file_upload)
		support_api.post('/file/queryPage', handlers.file_query_page)
	}
}
