import UIKit

extension CameraModulePreliminaryView {
	
	func setupLayers() {
		guard let renderer else {
			return
		}
		metalLayer?.device = renderer.device
		metalLayer?.pixelFormat = renderer.pixelFormat
	}
	
}
