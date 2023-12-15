import Foundation
import AVFoundation

extension CameraService: AVCaptureVideoDataOutputSampleBufferDelegate, AVCaptureAudioDataOutputSampleBufferDelegate {
	
	func captureOutput(
		_ output: AVCaptureOutput,
		didOutput sampleBuffer: CMSampleBuffer,
		from connection: AVCaptureConnection
	) {
		switch output {
		case is AVCaptureVideoDataOutput:
			delegate?.didReceiveVideoOutput(sampleBuffer)
		case is AVCaptureAudioDataOutput:
			delegate?.didReceiveAudioOutput(sampleBuffer)
		default:
			debugPrint("Unrecognized output received.")
		}
	}
	
}
