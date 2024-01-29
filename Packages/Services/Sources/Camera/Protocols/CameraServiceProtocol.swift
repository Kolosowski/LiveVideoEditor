import Foundation
import Combine
import CoreMedia.CMSampleBuffer

public protocol CameraServiceProtocol {
	var videoOutputPublisher: AnyPublisher<CMSampleBuffer, Never> { get }
	var audioOutputPublisher: AnyPublisher<CMSampleBuffer, Never> { get }
	
	func setup() throws
	func startCapture()
	func stopCapture()
}
