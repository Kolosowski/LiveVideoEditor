import UIKit
import CoreMedia.CMSampleBuffer

extension CameraModulePreliminaryView {
	
	func render(_ buffer: CMSampleBuffer) throws {
		guard let drawable = (layer as? CAMetalLayer)?.nextDrawable() else {
			throw Error.nextDrawableCreate
		}
		
		try renderer.render(
			buffer,
			drawable: drawable
		)
	}
	
}
