import Foundation

extension CameraModulePresenter: CameraModulePresenterProtocol {
	
	func viewDidLoad() {
		view?.setup()
		
		setupObservers()
		do {
			try interactor.setupCamera()
		} catch {
			assertionFailure("Couldn't setup camera")
		}
	}
	
	func viewDidAppear() {
		interactor.startCameraCapture()
	}
	
	func didReceive(error: Error) {
		assertionFailure("Error received \(error).")
	}
	
}
