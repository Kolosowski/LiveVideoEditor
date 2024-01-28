import UIKit

extension CameraModulePreliminaryView {
	
	func setupViews() {
		metalView.device = renderer.device
		metalView.clearColor = MTLClearColor(red: 0, green: 0, blue: 0, alpha: 1)
		metalView.colorPixelFormat = renderer.pixelFormat
		metalView.delegate = self
	}
	
}
