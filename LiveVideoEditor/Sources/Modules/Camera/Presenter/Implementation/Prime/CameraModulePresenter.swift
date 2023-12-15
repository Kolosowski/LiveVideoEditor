import Foundation

final class CameraModulePresenter {
	
	// MARK: - Stored Properties / References
	
	weak var view: CameraModuleViewProtocol?
	weak var delegate: CameraModuleDelegateProtocol?
	
	let router: CameraModuleRouterProtocol
	let interactor: CameraModuleInteractorProtocol
	
	// MARK: - Life Cycle
	
	init(
		router: CameraModuleRouterProtocol,
		interactor: CameraModuleInteractorProtocol
	) {
		self.router = router
		self.interactor = interactor
	}
	
}
