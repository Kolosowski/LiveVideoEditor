import AVFoundation
import Combine
import CoreMedia.CMSampleBuffer

extension CameraService: CameraServiceProtocol {
	
	public var videoOutputPublisher: AnyPublisher<CMSampleBuffer, Never> {
		videoOutputSubject.eraseToAnyPublisher()
	}
	
	public var audioOutputPublisher: AnyPublisher<CMSampleBuffer, Never> {
		audioOutputSubject.eraseToAnyPublisher()
	}
	
	public func setup() throws {
		try setupVideo()
		try setupAudio()
	}
	
	public func startCapture() {
		workQueue.async { [weak self] in
			self?.captureSession.commitConfiguration()
			self?.captureSession.startRunning()
		}
	}
	
	public func stopCapture() {
		workQueue.async { [weak self] in
			self?.captureSession.stopRunning()
		}
	}
	
}
