module validate

pub interface Validator[T] {
	field FieldData // 字段类型
	message string
	value string
	validate(&T) !
}

// validate 验证规则
fn validate[T](data T) ?[]IError {
	mut errs := []IError{}
	mut validators := []Validator[T]{}

	$for field in T.fields {
		rule_attr := field.attrs.filter(it.contains('validate'))
		if rule_attr.len > 0 {
			rules := rule_attr.first().trim_string_left('validate: ').split(',')
			mut message_map := map[string]string{}
			message_attrs := field.attrs.filter(it.contains('message'))
			if message_attrs.len > 0 {
				messages := message_attrs.first().trim_string_left('message: ').split(',')
				for message in messages {
					key, value := message.trim_space().split_once('=')?
					message_map[key] = value
				}
			}
			clone_field := field
			for rule in rules {
				arr := rule.trim_space().split('=')
				match arr[0] {
					'min' {
						validators << Validator(&Min[T]{
							field: clone_field
							message: message_map['min']
							value: rule
						})
					}
					// 'max' {}
					// 'len' {}
					// 'nonzero' {}
					// 'required' {}
					// 'email' {}
					// 'ip' {}
					// 'mobile' {}
					// 'regexp' {}
					else {}
				}
			}

			for mut validator in validators {
				validator.validate(&data) or { errs << err }
			}
		}
	}
	return errs
}
