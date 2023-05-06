module i18n

import os

struct Locale {
mut:
	cfg LocaleConfig

	maps map[string]string
}

[params]
pub struct LocaleConfig {
mut:
	fallback_locale string
	lang            string
	dir             string
}

pub fn new_locale(cfg LocaleConfig) &Locale {
	// if cfg.fallback_locale == '' {
	// 	cfg.fallback_locale = 'zh-CN'
	// }
	//
	// if cfg.dir == '' {
	// 	cfg.dir = os.dir('i18n')
	// }

	locale := &Locale{
		cfg: cfg
	}
	return locale
}

pub fn (mut n Locale) set_locale(lang string) {
	n.cfg.lang = lang
}

pub fn (mut n Locale) set_fallback_locale(lang string) {
	n.cfg.fallback_locale = lang
}

pub fn (mut n Locale) translate(key string, placeholders ...string) string {
	mut value := key
	if key in n.maps {
		value = n.maps[key]
		for placeholder in placeholders {
			value = value.replace_once('{}', placeholder)
		}
	}
	return value
}
