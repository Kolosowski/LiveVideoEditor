import Foundation
import Swinject

class ModuleBuilder {
	
	// MARK: - Stored Properties / Container
	
	let container: Container
	
	// MARK: - Life Cycle
	
	init(_ parentContainer: Container = Container()) {
		container = Container(parent: parentContainer)
		
		registerServices()
	}
	
	// MARK: - Register Services
	
	func registerServices() {}
	
}
