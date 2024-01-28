import AVFoundation

extension CameraService {
	
	func setupVideo() throws {
		guard let device = AVCaptureDevice.default(.builtInDualCamera, for: .video, position: .back) else {
			throw Error.videoInputCreate
		}
		
		let input = try AVCaptureDeviceInput(device: device)
		if captureSession.canAddInput(input) {
			captureSession.addInput(input)
		}
		
		let output = AVCaptureVideoDataOutput()
		output.videoSettings = [kCVPixelBufferMetalCompatibilityKey as String: true]
		if captureSession.canAddOutput(output) {
			captureSession.addOutput(output)
			output.setSampleBufferDelegate(self, queue: workQueue)
		}
	}
	
	func setupAudio() throws {
		guard let device = AVCaptureDevice.default(for: .audio) else {
			throw Error.audioInputCreate
		}
		
		let input = try AVCaptureDeviceInput(device: device)
		if captureSession.canAddInput(input) {
			captureSession.addInput(input)
		}
		
		let output = AVCaptureAudioDataOutput()
		if captureSession.canAddOutput(output) {
			captureSession.addOutput(output)
			output.setSampleBufferDelegate(self, queue: workQueue)
		}
	}
	
}
