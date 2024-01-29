import Foundation
import Combine

final class CameraModulePresenter {
	
	// MARK: - Stored Properties / References
	
	weak var view: CameraModuleViewProtocol?
	weak var delegate: CameraModuleDelegateProtocol?
	
	let router: CameraModuleRouterProtocol
	let interactor: CameraModuleInteractorProtocol
	
	// MARK: - Stored Properties / Combine
	
	var cancellables: Set<AnyCancellable> = []
	
	// MARK: - Life Cycle
	
	init(
		router: CameraModuleRouterProtocol,
		interactor: CameraModuleInteractorProtocol
	) {
		self.router = router
		self.interactor = interactor
	}
	
}
