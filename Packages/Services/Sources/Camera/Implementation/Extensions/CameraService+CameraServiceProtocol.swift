import Foundation
import AVFoundation

extension CameraService: CameraServiceProtocol {
	
	public func setup() throws {
		try setupVideo()
		try setupAudio()
	}
	
	public func startCapture(_ delegate: CameraServiceDelegateProtocol) {
		self.delegate = delegate
		workQueue.async { [weak self] in
			self?.captureSession.commitConfiguration()
			self?.captureSession.startRunning()
		}
	}
	
	public func stopCapture() {
		delegate = nil
		workQueue.async { [weak self] in
			self?.captureSession.stopRunning()
		}
	}
	
}
