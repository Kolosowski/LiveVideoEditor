import Foundation

final class RootModuleInteractor {
	
	// MARK: - Stored Properties / References
	
	let dependencies: RootModuleDependenciesProtocol
	
	// MARK: - Life Cycle
	
	init(dependencies: RootModuleDependenciesProtocol) {
		self.dependencies = dependencies
	}
	
}
