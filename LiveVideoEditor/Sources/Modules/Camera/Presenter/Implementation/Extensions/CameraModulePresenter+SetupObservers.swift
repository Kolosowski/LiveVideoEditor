import Foundation

extension CameraModulePresenter {
	
	func setupObservers() {
		interactor.videoOutputPublisher.receive(on: DispatchQueue.main).sink { [weak self] sampleBuffer in
			self?.view?.process(sampleBuffer)
		}.store(in: &cancellables)
	}
	
}
