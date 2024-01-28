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
	
	func viewDidAppear() {
		interactor.startCameraCapture(self)
	}
	
	func didReceive(error: Error) {
		assertionFailure("Error received \(error).")
	}
	
}
