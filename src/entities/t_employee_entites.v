module entities

import middlewares
import encoding.base64
import time
import crypto.sha256
import crypto.hmac
import json
import config

[table: 't_employee']
pub struct Employee {
pub mut:
	id                 int    [json: 'employeeId'; primary; sql: serial]
	login_name         string [json: 'loginName']
	login_pwd          string [json: 'loginPwd']
	actual_name        string [json: 'actualName']
	gender             i8
	phone              string
	department_id      int    [json: 'departmentId']
	disabled_flag      i8     [json: 'disabledFlag']
	deleted_flag       i8     [json: 'deletedFlag']
	administrator_flag i8     [json: 'administratorFlag']
	remark             string
	update_time        string [default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time        string [default: 'CURRENT_TIMESTAMP'; json: 'createTime']
	token              string [build: 'skip']
}

pub fn (mut employee Employee) make_token() {
	jwt_header := middlewares.JwtHeader{'HS256', 'JWT'}
	jwt_payload := middlewares.JwtPayload{
		sub: '${employee.id}'
		name: '${employee.login_name}'
		iat: time.now()
	}

	header := base64.url_encode(json.encode(jwt_header).bytes())
	payload := base64.url_encode(json.encode(jwt_payload).bytes())
	signature := base64.url_encode(hmac.new(config.get_secret_key().bytes(), '${header}.${payload}'.bytes(),
		sha256.sum, sha256.block_size).bytestr().bytes())

	employee.token = '${header}.${payload}.${signature}'
}
