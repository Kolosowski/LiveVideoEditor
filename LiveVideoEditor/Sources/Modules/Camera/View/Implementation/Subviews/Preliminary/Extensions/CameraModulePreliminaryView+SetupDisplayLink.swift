import UIKit

extension CameraModulePreliminaryView {
	
	func setupDisplayLink() {
		displayLink = CADisplayLink(target: self, selector: #selector(drawLayer(_:)))
		displayLink?.preferredFramesPerSecond = 60
		displayLink?.add(to: .main, forMode: .default)
	}
	
}

// MARK: - Rendering

private extension CameraModulePreliminaryView {
	
	@objc
	func drawLayer(_ link: CADisplayLink) {
		guard let drawable = (layer as? CAMetalLayer)?.nextDrawable() else {
			return
		}
		renderer.draw(drawable)
	}
	
}
