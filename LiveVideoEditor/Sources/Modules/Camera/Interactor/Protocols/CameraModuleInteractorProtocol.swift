import Foundation
import Services

protocol CameraModuleInteractorProtocol {
	func setupCamera() throws
	func startCameraCapture(_ delegate: CameraServiceDelegateProtocol)
	func stopCameraCapture()
}
