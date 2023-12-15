import UIKit

final class CameraModuleBuilder: ModuleBuilder {
	
	// MARK: - Nested Types
	
	struct Output {
		let view: UIViewController
		let module: CameraModuleProtocol
	}
	
}

// MARK: - Build

extension CameraModuleBuilder {
	
	func module(
		delegate: CameraModuleDelegateProtocol?
	) throws -> Output {
		let dependenciesContainer = try CameraModuleDependenciesContainer(
			cameraService: container.tryResolve()
		)
		let router = CameraModuleRouter(container)
		let interactor = CameraModuleInteractor(dependencies: dependenciesContainer)
		let presenter = CameraModulePresenter(router: router, interactor: interactor)
		let view = CameraModuleView(presenter: presenter)
		
		presenter.delegate = delegate
		presenter.view = view
		router.view = view
		
		return Output(
			view: view,
			module: presenter
		)
	}
	
}
