module i18n

import os
import json

struct Locale {
mut:
	cfg      LocaleConfig
	messages map[string]string
}

@[params]
pub struct LocaleConfig {
pub mut:
	fallback_locale string
	lang            string
	dir             string
}

pub fn new_locale(cfg LocaleConfig) &Locale {
	mut locale := &Locale{
		cfg: cfg
	}

	if cfg.lang == '' {
		locale.cfg.lang = 'en-US'
	}

	if cfg.dir == '' {
		locale.cfg.dir = os.dir('lang')
	}

	if cfg.fallback_locale == '' {
		locale.set_fallback_locale('zh-CN')
	}

	return locale
}

pub fn (mut n Locale) load() {
	local_file := os.join_path(n.cfg.dir, n.cfg.lang + '.json')
	fallback_local_file := os.join_path(n.cfg.dir, n.cfg.fallback_locale + '.json')
	data := os.read_file(local_file) or { '{}' }
	fallback_data := os.read_file(fallback_local_file) or { '{}' }
	mut messages := json.decode(map[string]string, data) or {
		map[string]string{}
	}
	mut fallback_messages := json.decode(map[string]string, fallback_data) or {
		map[string]string{}
	}
	for key, value in fallback_messages {
		if key !in messages {
			messages[key] = value
		}
	}

	n.messages = messages.move()
}

pub fn (mut n Locale) set_message(key string, message string) {
	n.messages[key] = message
}

pub fn (mut n Locale) set_locale(lang string) {
	n.cfg.lang = lang
	n.load()
}

pub fn (mut n Locale) set_fallback_locale(lang string) {
	n.cfg.fallback_locale = lang
	n.set_locale(n.cfg.lang)
}

pub fn (mut n Locale) translate(key string, placeholders ...string) !string {
	mut value := key
	if key in n.messages {
		value = n.messages[key]
		for placeholder in placeholders {
			value = value.replace_once('{}', placeholder)
		}
	}

	if value.contains('{}') {
		return error('missing placeholder parameter')
	}
	return value
}
