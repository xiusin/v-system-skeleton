module middlewares

import xiusin.very
import net.http

struct PageQueryDto {
pub mut:
	page_num  int @[json: 'pageNum']
	page_size int @[json: 'pageSize']
}

pub fn query(mut ctx very.Context) ! {
	if ctx.req.method == http.Method.post
		&& ctx.req.get_header(.content_type).to_lower().contains('application/json') {
		page_query_dto := ctx.body_parse[PageQueryDto]()!
		ctx.req.add_query('page_num', page_query_dto.page_num.str())
		ctx.req.add_query('page_size', page_query_dto.page_size.str())
	}
	ctx.next()!
}
