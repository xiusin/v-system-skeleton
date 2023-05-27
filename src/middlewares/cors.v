module middlewares

import xiusin.very

pub fn cors(mut ctx very.Context) ! {
	mut header := ctx.writer().header

	header.set(.access_control_allow_origin, ctx.req.referer().trim_right('/'))
	header.set(.access_control_allow_methods, 'GET, POST')
	header.set(.access_control_allow_credentials, 'true')
	header.set(.access_control_allow_headers, 'Origin,Accept,Authorization,platformId,ut,DNT,X-CustomHeader,Keep-Alive,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,x-access-token')
	ctx.writer().header = header
	if ctx.req.method.str() != 'OPTIONS' {
		ctx.next()!
	} else {
		ctx.stop()
	}
}
