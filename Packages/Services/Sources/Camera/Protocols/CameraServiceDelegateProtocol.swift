import Foundation
import AVFoundation

protocol CameraServiceDelegateProtocol: AnyObject {
	func didReceiveVideoOutput(_ buffer: CMSampleBuffer)
	func didReceiveAudioOutput(_ buffer: CMSampleBuffer)
}
