module middlewares

import xiusin.very
import xiusin.cache
import crypto.md5

pub fn response_cache(mut ctx very.Context) ! {
	mut cache_manager := ctx.di[&cache.Cache]('cache_manager')!
	mut response_cache := cache_manager.table('very:response:cache')!

	cache_key := md5.hexhash('${ctx.req.path()}|${ctx.req.data}')
	ctx.resp.header.add_custom('X-CacheKey', cache_key)!

	if response_cache.exists(cache_key) {
		ctx.resp.header.add_custom('X-Cache-Hit', 'true')!
		ctx.resp.header.add(.content_type, 'application/json')
		ctx.resp.body = response_cache.value(cache_key)!.origin_data()
		return
	}
	ctx.next()!
}
