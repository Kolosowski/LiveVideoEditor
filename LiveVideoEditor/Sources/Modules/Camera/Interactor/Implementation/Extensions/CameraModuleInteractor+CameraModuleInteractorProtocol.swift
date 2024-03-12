import Foundation
import Combine
import CoreMedia.CMSampleBuffer
import Services

extension CameraModuleInteractor: CameraModuleInteractorProtocol {
	
	var videoOutputPublisher: AnyPublisher<CMSampleBuffer, Never> {
		dependencies
			.cameraService
			.videoOutputPublisher
			.receive(on: DispatchQueue.main)
			.eraseToAnyPublisher()
	}
	
	var audioOutputPublisher: AnyPublisher<CMSampleBuffer, Never> {
		dependencies
			.cameraService
			.audioOutputPublisher
			.receive(on: DispatchQueue.main)
			.eraseToAnyPublisher()
	}
	
	func setupCamera() throws {
		try dependencies.cameraService.setup()
	}
	
	func startCameraCapture() {
		dependencies.cameraService.startCapture()
	}
	
	func stopCameraCapture() {
		dependencies.cameraService.stopCapture()
	}
	
}
