import Foundation
import CoreMedia.CMSampleBuffer

protocol CameraModuleViewProtocol: AnyObject {
	func setup()
	func render(_ buffer: CMSampleBuffer)
}
