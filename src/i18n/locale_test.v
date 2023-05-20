module i18n

fn test_locale() {
	mut locale := new_locale(lang: 'en-US')
	locale.set_message('index.hello', 'hello {}, welcome!')
	println(locale.translate('index.hello', 'xiusin')!)
}
