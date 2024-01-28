import UIKit
import CoreMedia.CMSampleBuffer

extension CameraModulePreliminaryView {
	
	func process(_ buffer: CMSampleBuffer) throws {
		try renderer.process(buffer: buffer)
	}
	
}
