import Foundation
import Services

extension CameraModuleInteractor: CameraModuleInteractorProtocol {
	
	func setupCamera() throws {
		try dependencies.cameraService.setup()
	}
	
	func startCameraCapture(_ delegate: CameraServiceDelegateProtocol) {
		dependencies.cameraService.startCapture(delegate)
	}
	
	func stopCameraCapture() {
		dependencies.cameraService.stopCapture()
	}
	
}
