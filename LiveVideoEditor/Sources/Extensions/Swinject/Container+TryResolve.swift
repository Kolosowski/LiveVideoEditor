import Swinject

public extension Container {
	
	// MARK: - Nested Types
	
	enum Error: Swift.Error {
		case serviceNotRegistered(description: String)
	}
	
	// MARK: - Try Resolve
	
	func tryResolve<Service>() throws -> Service {
		guard let service = resolve(Service.self) else {
			throw Error.serviceNotRegistered(
				description: String(describing: Service.self)
			)
		}
		return service
	}
	
}
