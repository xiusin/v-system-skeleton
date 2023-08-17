module services

import entities
import xiusin.very
import db.sqlite
import math
import crypto.sha256
import crypto.hmac
import encoding.base64
import json
import time
import config

pub struct JwtHeader {
	alg string
	typ string
}

pub struct JwtPayload {
pub mut:
	sub         string    // (subject) = Entity to whom the token belongs, usually the user ID;
	iss         string    // (issuer) = Token issuer;
	exp         string    // (expiration) = Timestamp of when the token will expire;
	iat         time.Time // (issued at) = Timestamp of when the token was created;
	aud         string    // (audience) = Token recipient, represents the application that will use it.
	name        string
	roles       string
	permissions string
}

// base_query Q 接收参数请求
pub fn base_query[T](mut ctx very.Context, build_where fn () ![]string, orders ...string) !entities.Paginator[T] {
	db := ctx.get_db[&sqlite.DB]()!
	mut builder := entities.new_builder(true)
	builder.model[T]()
	where := build_where()!
	builder.where(where.join(' AND '))
	mut page_size := ctx.req.query('page_size').int()
	page_size = math.max[int](page_size, 1)
	page_num := ctx.req.query('page_num').int()
	builder.limit(page_size, (page_num - 1) * page_size)
	if orders.len == 0 {
		builder.order_by_desc('id')
	} else {
		for order in orders {
			builder.order_by(order)
		}
	}
	count := db.q_int(builder.to_sql(true))!
	users := db.exec(builder.to_sql())!
	paginator := builder.get_page[T](count, page_num, page_num, users)!
	return paginator
}

pub fn make_token(mut employee entities.Employee) {
	jwt_header := JwtHeader{'HS256', 'JWT'}
	jwt_payload := JwtPayload{
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
