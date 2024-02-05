import UIKit
import CoreMedia.CMSampleBuffer
import UserInterface

extension CameraModulePreliminaryView {
	
	func process(_ buffer: CMSampleBuffer) throws {
		try renderer?.process(buffer: buffer)
	}
	
}
