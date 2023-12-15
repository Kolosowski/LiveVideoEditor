import Foundation

extension CameraModulePresenter: CameraModulePresenterProtocol {
	
	func viewDidLoad() {
		view?.setup()
		
		do {
			try interactor.setupCamera()
		} catch {
			assertionFailure("Couldn't setup camera")
		}
	}
	
}
