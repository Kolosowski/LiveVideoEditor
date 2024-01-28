import Foundation
import Services
import CoreMedia.CMSampleBuffer

extension CameraModulePresenter: CameraServiceDelegateProtocol {
	
	func didReceiveVideoOutput(_ buffer: CMSampleBuffer) {
		view?.process(buffer)
	}
	
	func didReceiveAudioOutput(_ buffer: CMSampleBuffer) {}
	
}
