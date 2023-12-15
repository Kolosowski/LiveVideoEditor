import Foundation

final class RootModulePresenter {
	
	// MARK: - Stored Properties / References
	
	weak var delegate: RootModuleDelegateProtocol?
	weak var view: RootModuleViewProtocol?
	
	let router: RootModuleRouterProtocol
	let interactor: RootModuleInteractorProtocol
	
	// MARK: - Life Cycle
	
	init(router: RootModuleRouterProtocol, interactor: RootModuleInteractorProtocol) {
		self.router = router
		self.interactor = interactor
	}
	
}
