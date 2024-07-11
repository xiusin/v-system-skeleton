module middlewares

import xiusin.very
import crypto.md5
import xiusin.vredis

pub fn response_cache(mut ctx very.Context) ! {
	mut manager := ctx.di[vredis.Pool]('redis_manager')!
	mut client := manager.get()!
	defer {
		client.release()
	}

	cache_key := md5.hexhash('${ctx.req.path()}|${ctx.req.data}')
	ctx.resp.header.add_custom('X-CacheKey', cache_key)!

	if client.exists(cache_key)! {
		ctx.resp.header.add_custom('X-Cache-Hit', 'true')!
		ctx.resp.header.add(.content_type, 'application/json')
		ctx.resp.body = client.get(cache_key)!
		return
	}
	ctx.next()!
}
