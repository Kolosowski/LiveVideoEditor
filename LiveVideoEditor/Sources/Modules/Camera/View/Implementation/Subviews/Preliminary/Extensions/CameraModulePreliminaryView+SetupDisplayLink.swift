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
		
		let passDescriptor = MTLRenderPassDescriptor()
		passDescriptor.colorAttachments[0].loadAction = .clear
		passDescriptor.colorAttachments[0].storeAction = .store
		passDescriptor.colorAttachments[0].clearColor = MTLClearColorMake(0, 1, 1, 1)
		passDescriptor.colorAttachments[0].texture = drawable.texture
		renderer.draw(drawable, passDescriptor: passDescriptor)
	}
	
}
