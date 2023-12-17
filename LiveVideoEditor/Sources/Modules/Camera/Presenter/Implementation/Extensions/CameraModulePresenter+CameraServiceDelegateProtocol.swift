import Foundation
import CoreMedia.CMSampleBuffer

extension CameraModulePresenter: CameraServiceDelegateProtocol {
	
	func didReceiveVideoOutput(_ buffer: CMSampleBuffer) {}
	
	func didReceiveAudioOutput(_ buffer: CMSampleBuffer) {}
	
}
