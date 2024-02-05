import UIKit
import UserInterface

extension CameraModulePreliminaryView {
	
	func setupDisplayLink() {
		displayLink = CADisplayLink(target: self, selector: #selector(drawLayer(_:)))
		displayLink?.preferredFramesPerSecond = UIScreen.main.maximumFramesPerSecond
		displayLink?.add(to: .main, forMode: .default)
	}
	
}

// MARK: - Rendering

private extension CameraModulePreliminaryView {
	
	@objc
	func drawLayer(_ link: CADisplayLink) {
		guard let drawable = metalLayer?.nextDrawable() else {
			return
		}
		renderer?.draw(drawable)
	}
	
}
