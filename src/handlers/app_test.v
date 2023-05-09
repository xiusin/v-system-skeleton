module handlers

fn test_app() {
	methods[App](App{})
}

fn methods[T](app T) {
	$for method_ in T.methods {
		dump(method_)
		// method := method_
		// fn [app, method] [T]() {
		// 	$for method__ in T.methods {
		// 		if method__.name == method.name {
		// 			app.$method()
		// 		}
		// 	}
		// }()
	}
}
