module middlewares

import xiusin.very
import crypto.hmac
import encoding.base64
import crypto.sha256
import json
import services
import time
import core.internal.config

pub fn auth(mut ctx very.Context) ! {
	uri := ctx.req.path()
	if !uri.ends_with('/login') && !uri.ends_with('/logout') && !uri.starts_with('/uploads')
		&& !uri.starts_with('/app') && !uri.starts_with('/manages') {
		token := ctx.req.header.get_custom('x-access-token') or { '' }
		if token.len == 0 {
			ctx.stop()
			ctx.set_status(.forbidden)
			return error('miss token')
		}

		if !auth_verify(token)! {
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

		if time.unix(jwt_payload.exp).unix() <= time.now().unix() {
			ctx.set_status(.forbidden)
			return error('登录已过期， 请重新登录')
		}

		login_user_id := jwt_payload.sub.int()
		login_user_name := jwt_payload.name.str()

		ctx.set('user_name', login_user_name)
		ctx.set('user_id', login_user_id)
		ctx.next()!
		return
	}
	ctx.next()!
}

fn auth_verify(token string) !bool {
	if token == '' {
		return false
	}
	token_split := token.split('.')
	signature_mirror := hmac.new(config.config('secret_salt')!.bytes(), '${token_split[0]}.${token_split[1]}'.bytes(),
		sha256.sum, sha256.block_size).bytestr().bytes()

	signature_from_token := base64.url_decode(token_split[2])
	return hmac.equal(signature_from_token, signature_mirror)
}
