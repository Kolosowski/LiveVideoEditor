import Foundation
import Combine
import CoreMedia.CMSampleBuffer
import Services

extension CameraModuleInteractor: CameraModuleInteractorProtocol {
	
	var videoOutputPublisher: AnyPublisher<CMSampleBuffer, Never> {
		dependencies.cameraService.videoOutputPublisher
	}
	
	var audioOutputPublisher: AnyPublisher<CMSampleBuffer, Never> {
		dependencies.cameraService.audioOutputPublisher
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
