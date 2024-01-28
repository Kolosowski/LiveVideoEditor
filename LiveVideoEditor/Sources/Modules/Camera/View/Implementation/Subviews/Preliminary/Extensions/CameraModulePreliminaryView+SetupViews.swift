import UIKit

extension CameraModulePreliminaryView {
	
	func setupViews() {
		metalView.device = renderer.device
		metalView.clearColor = MTLClearColor(red: 1, green: 215 / 255, blue: 0, alpha: 1)
		metalView.colorPixelFormat = renderer.pixelFormat
		metalView.delegate = renderer.delegateHandler
	}
	
}
