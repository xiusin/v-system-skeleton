module entities

[table: 't_department']
pub struct Department {
pub mut:
	id          int    [json: 'departmentId'; primary; sql: serial]
	name        string
	manager_id  int    [json: 'managerId']
	parent_id   int    [json: 'parentId']
	sort        int
	update_time string [default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time string [default: 'CURRENT_TIMESTAMP'; json: 'createTime']
}

pub struct DepartmentTree {
pub mut:
	id          int    [json: 'departmentId'; primary; sql: serial]
	name        string
	manager_id  int    [json: 'managerId']
	parent_id   int    [json: 'parentId']
	sort        int
	update_time string [default: 'CURRENT_TIMESTAMP'; json: 'updateTime']
	create_time string [default: 'CURRENT_TIMESTAMP'; json: 'createTime']

	// --- ↑ copy
	children []DepartmentTree
}

pub fn build_tree[T, M](data []T, parent_id int) []M {
	mut trees := []M{}
	for menu in data {
		if menu.parent_id == parent_id {
			mut tree := M{}
			$for field in T.fields {
				tree.$(field.name) = menu.$(field.name)
			}
			tree.children << build_tree[T, M](data, tree.id)
			trees << tree
		}
	}
	return trees
}
