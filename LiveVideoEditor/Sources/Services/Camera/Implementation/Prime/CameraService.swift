import Foundation
import AVFoundation

final class CameraService: NSObject {
	
	// MARK: - Stored Properties / Tools
	
	let captureSession: AVCaptureSession = AVCaptureSession()
	let workQueue: DispatchQueue = DispatchQueue(label: "com.tuesdayCode.kolosowskiar.cameraService")
	
	// MARK: - Stored Properties / References
	
	weak var delegate: CameraServiceDelegateProtocol?
	
}
