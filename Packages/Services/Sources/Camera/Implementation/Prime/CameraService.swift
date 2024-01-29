import AVFoundation
import Combine
import CoreMedia.CMSampleBuffer

public final class CameraService: NSObject {
	
	// MARK: - Stored Properties / Tools
	
	let captureSession: AVCaptureSession = AVCaptureSession()
	let workQueue: DispatchQueue = DispatchQueue(label: "com.tuesdayCode.kolosowskiar.cameraService")
	
	// MARK: - Stored Properties / Combine
	
	let videoOutputSubject: PassthroughSubject<CMSampleBuffer, Never> = PassthroughSubject()
	let audioOutputSubject: PassthroughSubject<CMSampleBuffer, Never> = PassthroughSubject()
	
}
