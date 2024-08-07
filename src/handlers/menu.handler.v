module handlers

import xiusin.very
import entities
import db.pg
import time
import core.internal

pub fn menu_query(mut ctx very.Context) ! {
	pp := ctx.di[&very.PoolChannel[pg.DB]](internal.service_db_pool)!
	mut db := pp.acquire()!
	defer {
		pp.release(db)
	}
	menus := sql db {
		select from entities.Menu order by sort desc
	}!
	resp_success[[]entities.Menu](mut ctx, data: menus)!
}

pub fn menu_auth_url(mut ctx very.Context) ! {
}

pub fn menu_add(mut ctx very.Context) ! {
	menu := ctx.body_parse[entities.Menu]()!
	pp := ctx.di[&very.PoolChannel[pg.DB]](internal.service_db_pool)!
	mut db := pp.acquire()!
	defer {
		pp.release(db)
	}
	sql db {
		insert menu into entities.Menu
	}!
	last_id := ctx.di[&very.PoolChannel[pg.DB]](internal.service_db_pool)!.acquire()!.last_id()
	new_menu := sql db {
		select from entities.Menu where id == last_id limit 1
	}!
	resp_success[entities.Menu](mut ctx, data: new_menu.first())!
}

pub fn menu_update(mut ctx very.Context) ! {
	menu := ctx.body_parse[entities.Menu]()!
	pp := ctx.di[&very.PoolChannel[pg.DB]](internal.service_db_pool)!
	mut db := pp.acquire()!
	defer {
		pp.release(db)
	}

	sql db {
		update entities.Menu set parent_id = menu.parent_id, menu_type = menu.menu_type,
		sort = menu.sort, icon = menu.icon, disabled_flag = menu.disabled_flag, frame_flag = menu.frame_flag,
		cache_flag = menu.cache_flag, perms_type = menu.perms_type, visible_flag = menu.visible_flag,
		frame_url = menu.frame_url, web_perms = menu.web_perms, path = menu.path, menu_name = menu.menu_name,
		update_time = time.now() where id == menu.id
	}!

	resp_success[string](mut ctx, data: '')!
}

pub fn menu_batch_delete(mut ctx very.Context) ! {
	pp := ctx.di[&very.PoolChannel[pg.DB]](internal.service_db_pool)!
	mut db := pp.acquire()!
	defer {
		pp.release(db)
	}
	for menu_id in ctx.req.query('menuIdList').split(',') {
		if menu_id.int() == 0 {
			continue
		}
		// 判断是否存在下级
		menu := sql db {
			select from entities.Menu where parent_id == menu_id.int() limit 1
		}!
		if menu.len > 0 {
			return error('菜单ID${menu_id}下存在子菜单,请先删除子级菜单')
		}
		sql db {
			delete from entities.Menu where id == menu_id.int()
		}!
	}

	resp_success[string](mut ctx, data: '')!
}

pub fn menu_tree(mut ctx very.Context) ! {
	pp := ctx.di[&very.PoolChannel[pg.DB]](internal.service_db_pool)!
	mut db := pp.acquire()!
	defer {
		pp.release(db)
	}
	resp_success[[]entities.MenuTree](mut ctx,
		data: entities.build_tree[entities.Menu, entities.MenuTree](sql db {
			select from entities.Menu
		}!, 0)
	)!
}
