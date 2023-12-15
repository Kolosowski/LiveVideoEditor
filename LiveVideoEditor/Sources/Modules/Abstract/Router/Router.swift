import Foundation
import Swinject

class Router {
	
	// MARK: - Stored Properties / Container
	
	let container: Container
	
	// MARK: - Life Cycle
	
	init(_ container: Container) {
		self.container = container
	}
	
}
