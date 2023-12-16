import Foundation
import MetalKit

extension CameraRenderer {
	
	func passDescriptor(drawable: CAMetalDrawable) -> MTLRenderPassDescriptor {
		let descriptor = MTLRenderPassDescriptor()
		descriptor.colorAttachments[0].texture = drawable.texture
		descriptor.colorAttachments[0].loadAction = .clear
		descriptor.colorAttachments[0].clearColor = MTLClearColor(red: 0, green: 0, blue: 0, alpha: 1)
		descriptor.colorAttachments[0].storeAction = .store
		return descriptor
	}
	
}
