import UIKit

extension CameraModulePreliminaryView {
	
	func setupLayers() {
		guard let layer = layer as? CAMetalLayer else {
			assertionFailure("Layer has wrong type")
			return
		}
		
		layer.device = renderer.device
		layer.pixelFormat = renderer.pixelFormat
		layer.contentsScale = UIScreen.main.scale
	}
	
}
