import UIKit
import CoreMedia.CMSampleBuffer

extension CameraModuleView: CameraModuleViewProtocol {
	
	func setup() {
		setupViews()
		setupLayout()
		setupActions()
	}
	
	func render(_ buffer: CMSampleBuffer) throws {
		try preliminaryView.render(buffer)
	}
	
}
