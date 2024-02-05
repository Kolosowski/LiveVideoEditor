import UIKit
import CoreMedia.CMSampleBuffer

extension CameraModuleView: CameraModuleViewProtocol {
	
	func setup() throws {
		try setupViews()
		setupLayout()
		setupActions()
	}
	
	func process(_ buffer: CMSampleBuffer) {
		do {
			try preliminaryView.process(buffer)
		} catch {
			presenter.didReceive(error: error)
		}
	}
	
}
