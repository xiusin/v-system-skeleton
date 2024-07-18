module internal

pub fn records_to_map[K, T](records []T, field_ string) map[K]T {
	mut result := map[K]T{}
	$for field in T.fields {
		for _, record in records {
			if field.name == field_ {
				$if field.typ is K {
					result[record.$(field.name)] = record
				}
			}
		}
	}
	return result
}
