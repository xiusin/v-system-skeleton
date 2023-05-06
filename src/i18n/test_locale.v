module i18n

fn test_locale() {
	mut locale := new_locale(dir: 'i18n', lang: 'en-US')
	println(locale.translate('sss'))
}
