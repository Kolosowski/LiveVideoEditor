import Foundation
import AVFoundation

extension CameraService: AVCaptureVideoDataOutputSampleBufferDelegate, AVCaptureAudioDataOutputSampleBufferDelegate {
	
	func captureOutput(
		_ output: AVCaptureOutput,
		didOutput sampleBuffer: CMSampleBuffer,
		from connection: AVCaptureConnection
	) {
		DispatchQueue.main.async {
			switch output {
			case is AVCaptureVideoDataOutput:
				self.delegate?.didReceiveVideoOutput(sampleBuffer)
			case is AVCaptureAudioDataOutput:
				self.delegate?.didReceiveAudioOutput(sampleBuffer)
			default:
				debugPrint("Unrecognized output received.")
			}
		}
	}
	
}
