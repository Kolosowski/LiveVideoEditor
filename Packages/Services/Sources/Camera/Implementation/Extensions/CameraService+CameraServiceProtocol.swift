import Foundation
import AVFoundation

extension CameraService: CameraServiceProtocol {
	
	func setup() throws {
		try setupVideo()
		try setupAudio()
	}
	
	func startCapture(_ delegate: CameraServiceDelegateProtocol) {
		self.delegate = delegate
		workQueue.async { [weak self] in
			self?.captureSession.commitConfiguration()
			self?.captureSession.startRunning()
		}
	}
	
	func stopCapture() {
		delegate = nil
		workQueue.async { [weak self] in
			self?.captureSession.stopRunning()
		}
	}
	
}
