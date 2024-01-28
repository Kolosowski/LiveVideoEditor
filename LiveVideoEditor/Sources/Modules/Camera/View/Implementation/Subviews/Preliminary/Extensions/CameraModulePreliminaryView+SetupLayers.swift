import UIKit

extension CameraModulePreliminaryView {
	
	func setupLayers() {
		guard let layer = layer as? CAMetalLayer else {
			return
		}
		layer.device = renderer.device
		layer.pixelFormat = renderer.pixelFormat
	}
	
}
