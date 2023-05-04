struct Test {
	username string [validate: 'min=3,max=40,regexp=^[a-zA-Z] *\$']
	name     string [validate: 'nonzero']
	age      int    [validate: 'min=21']
}

enum Rule {
	min = 'min'
}

// 验证规则
fn validate[T](data T) []IError {
	$for field in T.fields {
		rules := field.attrs.filter(it.contains('validate')).first().split(',')
		println(rules)
		for rule in rules {
			arr := rule.trim_space().split('=')
			match arr[0] {
				'min' {}
				'max' {}
				'len' {}
				'nonzero' {}
				'required' {}
				'email' {}
				'ip' {}
				'mobile' {}
				'regexp' {}
			}
		}
	}
	return []IError{}
}

fn main() {
	test := Test{
		username: 'xiusin'
		name: 'coding'
		age: 20
	}

	println(validate[Test](test))
}
