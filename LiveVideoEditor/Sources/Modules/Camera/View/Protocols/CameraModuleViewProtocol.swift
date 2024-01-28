import Foundation
import CoreMedia.CMSampleBuffer

protocol CameraModuleViewProtocol: AnyObject {
	func setup()
	func process(_ buffer: CMSampleBuffer)
}
