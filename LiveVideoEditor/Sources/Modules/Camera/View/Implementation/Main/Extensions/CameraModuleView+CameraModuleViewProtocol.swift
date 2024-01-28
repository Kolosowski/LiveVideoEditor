import UIKit
import CoreMedia.CMSampleBuffer

extension CameraModuleView: CameraModuleViewProtocol {
	
	func setup() {
		setupViews()
		setupLayout()
		setupActions()
	}
	
	func process(_ buffer: CMSampleBuffer) {
		do {
			try preliminaryView.render(buffer)
		} catch {
			presenter.didReceive(error: error)
		}
	}
	
}
