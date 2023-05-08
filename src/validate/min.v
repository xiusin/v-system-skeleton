module validate

pub struct Min[T] {
pub mut:
	field   FieldData
	message string
	value   string
}

fn (m &Min[T]) validate(data &T) ! {
	str_len := m.value.int()
	mut message := m.message
	if message.len == 0 {
		message = 'The minimum length cannot be less than {}'
	}

	$if m.field.typ is string {
		if data.$(m.field.name).len < str_len {
			return error(m.message.replace_once('{}', '${m.value}'))
		}
	}
}
