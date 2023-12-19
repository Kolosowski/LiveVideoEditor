import Foundation
import Services
import CoreMedia.CMSampleBuffer

extension CameraModulePresenter: CameraServiceDelegateProtocol {
	
	func didReceiveVideoOutput(_ buffer: CMSampleBuffer) {
		do {
			try view?.render(buffer)
		} catch {
			debugPrint(error)
		}
	}
	
	func didReceiveAudioOutput(_ buffer: CMSampleBuffer) {}
	
}
