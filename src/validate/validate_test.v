module validate

struct Test {
	username string [message: 'min=最小不能低于3,max='; validate: 'min=3,max=40,regexp=^[a-zA-Z] *\$']
}

fn test_test() {
	test := Test{
		username: '2'
	}
	println(validate[Test](test))
}
