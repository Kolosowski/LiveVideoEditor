import Foundation

extension CameraModulePresenter {
	
	func setupObservers() {
		interactor.videoOutputPublisher.sink { sampleBuffer in
			self.view?.process(sampleBuffer)
		}.store(in: &cancellables)
	}
	
}
