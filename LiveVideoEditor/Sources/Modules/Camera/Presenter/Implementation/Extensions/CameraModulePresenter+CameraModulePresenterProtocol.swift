import Foundation

extension CameraModulePresenter: CameraModulePresenterProtocol {
	
	func viewDidLoad() {
		do {
			try view?.setup()
			setupObservers()
			try interactor.setupCamera()
		} catch {
			assertionFailure("Setup error \(error)")
		}
	}
	
	func viewDidAppear() {
		interactor.startCameraCapture()
	}
	
	func didReceive(error: Error) {
		assertionFailure("Error received \(error).")
	}
	
	func didStartTouching() {}
	
	func didEndTouching() {}
	
}
