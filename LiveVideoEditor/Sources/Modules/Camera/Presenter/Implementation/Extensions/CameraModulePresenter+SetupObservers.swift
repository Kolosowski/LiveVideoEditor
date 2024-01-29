import Foundation

extension CameraModulePresenter {
	
	func setupObservers() {
		interactor.videoOutputPublisher.sink { [weak self] sampleBuffer in
			self?.view?.process(sampleBuffer)
		}.store(in: &cancellables)
	}
	
}
