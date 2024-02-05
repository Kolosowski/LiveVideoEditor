import Foundation
import CoreMedia.CMSampleBuffer

protocol CameraModuleViewProtocol: AnyObject {
	func setup() throws
	func process(_ buffer: CMSampleBuffer)
}
