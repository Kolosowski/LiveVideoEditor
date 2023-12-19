import Foundation
import Services
import CoreMedia.CMSampleBuffer

extension CameraModulePresenter: CameraServiceDelegateProtocol {
	
	func didReceiveVideoOutput(_ buffer: CMSampleBuffer) {
		view?.render(buffer)
	}
	
	func didReceiveAudioOutput(_ buffer: CMSampleBuffer) {}
	
}
