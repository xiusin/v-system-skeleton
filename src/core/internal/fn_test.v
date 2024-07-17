module internal

struct TestStruct {
pub mut:
	id   i64
	name string
}

fn test_records_to_map() {
	mut records := []TestStruct{}
	records << TestStruct{
		id: 1
		name: 'aa'
	}
	records << TestStruct{
		id: 2
		name: 'bb'
	}

	records_to_map[i64, TestStruct](records, 'id')
}
