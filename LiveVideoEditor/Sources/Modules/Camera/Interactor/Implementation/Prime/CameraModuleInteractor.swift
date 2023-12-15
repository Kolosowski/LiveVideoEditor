import Foundation

final class CameraModuleInteractor {
	
	// MARK: - Stored Properties / References
	
	let dependencies: CameraModuleDependenciesProtocol
	
	// MARK: - Life Cycle
	
	init(dependencies: CameraModuleDependenciesProtocol) {
		self.dependencies = dependencies
	}
	
}
