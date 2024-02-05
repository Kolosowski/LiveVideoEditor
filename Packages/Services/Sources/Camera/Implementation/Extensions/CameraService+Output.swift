import AVFoundation

extension CameraService: AVCaptureVideoDataOutputSampleBufferDelegate, AVCaptureAudioDataOutputSampleBufferDelegate {
	
	public func captureOutput(
		_ output: AVCaptureOutput,
		didOutput sampleBuffer: CMSampleBuffer,
		from connection: AVCaptureConnection
	) {
		switch output {
		case is AVCaptureVideoDataOutput:
			videoOutputSubject.send(sampleBuffer)
		case is AVCaptureAudioDataOutput:
			audioOutputSubject.send(sampleBuffer)
		default:
			debugPrint("Unrecognized output received.")
		}
	}
	
}
