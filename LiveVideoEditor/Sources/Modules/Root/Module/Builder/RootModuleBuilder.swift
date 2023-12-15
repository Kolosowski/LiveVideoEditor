import UIKit

final class RootModuleBuilder: ModuleBuilder {
	
	// MARK: - Nested Types
	
	struct Output {
		let view: UIWindow
		let module: RootModuleProtocol
	}
	
	// MARK: - Register Services
	
	override func registerServices() {
		container.register(CameraServiceProtocol.self) { _ in
			CameraService()
		}
	}
	
}

// MARK: - Build

extension RootModuleBuilder {
	
	func build(
		delegate: RootModuleDelegateProtocol? = nil
	) -> Output {
		let dependencies = RootModuleDependencies()
		let router = RootModuleRouter(container)
		let interactor = RootModuleInteractor(dependencies: dependencies)
		let presenter = RootModulePresenter(router: router, interactor: interactor)
		let view = RootModuleView(presenter: presenter)
		
		presenter.delegate = delegate
		presenter.view = view
		router.view = view
		
		return Output(
			view: view,
			module: presenter
		)
	}
	
}
