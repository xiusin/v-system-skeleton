module middlewares

import xiusin.very
import time
import xiusin.vcolor
import net.http

pub fn request_log(mut ctx very.Context) ! {
	now := time.now()

	mut methods := map[http.Method]vcolor.Attribute{}
	methods[http.Method.get] = .bg_blue
	methods[http.Method.post] = .bg_hi_cyan
	methods[http.Method.options] = .bg_magenta

	attrs := [vcolor.Attribute.fg_white, vcolor.Attribute.bold, methods[ctx.req.method]]
	mut method_color := vcolor.new(...attrs)

	defer {
		mut method := ctx.req.method.str()
		if method.len < 6 {
			method += ' '.repeat(6 - method.len + 1)
		}

		mut status := vcolor.Attribute.bg_hi_green
		if ctx.writer().status_code > 400 || ctx.writer().status_code < 500 {
			status = .bg_cyan
		}
		if ctx.writer().status_code >= 500 {
			status = .bg_red
		}
		mut status_color := vcolor.new(...[vcolor.Attribute.fg_white, vcolor.Attribute.bold, status])

		mut use_time := (time.now() - now).str()
		if use_time.len < 10 {
			use_time += ' '.repeat(10 - use_time.len + 1)
		}
		println('[vss] ${time.now().format_rfc3339()} | ${status_color.sprint(ctx.writer().status_code.str())} | ${method_color.sprint(method)} | ${use_time} | ${ctx.req.path()} ')
	}

	ctx.next()!
}
