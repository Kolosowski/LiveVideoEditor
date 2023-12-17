import Foundation

public protocol CameraServiceProtocol {
	func setup() throws
	func startCapture(_ delegate: CameraServiceDelegateProtocol)
	func stopCapture()
}
