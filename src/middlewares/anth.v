module middlewares

import xiusin.very
import crypto.hmac
import encoding.base64
import crypto.sha256
import config
import json
import services

pub fn auth(mut ctx very.Context) ! {
	if !ctx.path().ends_with('/login') && !ctx.path().ends_with('/logout')
		&& !ctx.path().starts_with('/uploads') && !ctx.path().starts_with('/app')
		&& !ctx.path().starts_with('/manages') {
		token := ctx.req.header.get_custom('x-access-token') or { '' }
		if token.len == 0 {
			ctx.stop()
			ctx.set_status(.forbidden)
			return error('miss token')
		}

		if !auth_verify(token) {
			ctx.stop()
			ctx.set_status(.forbidden)
			return error('token无效')
		}

		jwt_payload_stringify := base64.url_decode_str(token.split('.')[1])
		jwt_payload := json.decode(services.JwtPayload, jwt_payload_stringify) or {
			ctx.stop()
			ctx.set_status(.not_implemented)
			return error('token解析错误')
		}

		login_user_id := jwt_payload.sub.int()
		user := services.employee_info(ctx.db, login_user_id) or {
			ctx.set_status(.forbidden)
			ctx.stop()
			return error('用户不能存在')
		}

		ctx.set('user_name', user.actual_name)
		ctx.set('user_id', user.id)
		ctx.next()!
		return
	}
	ctx.next()!
}

fn auth_verify(token string) bool {
	if token == '' {
		return false
	}
	token_split := token.split('.')
	signature_mirror := hmac.new(config.get_secret_key().bytes(), '${token_split[0]}.${token_split[1]}'.bytes(),
		sha256.sum, sha256.block_size).bytestr().bytes()

	signature_from_token := base64.url_decode(token_split[2])

	return hmac.equal(signature_from_token, signature_mirror)
}
