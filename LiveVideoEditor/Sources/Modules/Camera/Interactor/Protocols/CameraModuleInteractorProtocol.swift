import Foundation
import Combine
import CoreMedia.CMSampleBuffer

protocol CameraModuleInteractorProtocol {
	var videoOutputPublisher: AnyPublisher<CMSampleBuffer, Never> { get }
	var audioOutputPublisher: AnyPublisher<CMSampleBuffer, Never> { get }
	
	func setupCamera() throws
	func startCameraCapture()
	func stopCameraCapture()
}
