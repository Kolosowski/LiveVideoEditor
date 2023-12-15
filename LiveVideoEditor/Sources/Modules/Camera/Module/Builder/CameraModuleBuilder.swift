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
	) -> Output {
		let dependenciesContainer = CameraModuleDependenciesContainer()
		let router = CameraModuleRouter()
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
