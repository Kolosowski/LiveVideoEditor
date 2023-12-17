import Foundation
import MetalKit

extension CameraRenderer {
	
	func passDescriptor(texture: MTLTexture) -> MTLRenderPassDescriptor {
		let descriptor = MTLRenderPassDescriptor()
		descriptor.colorAttachments[0].texture = texture
		descriptor.colorAttachments[0].loadAction = .clear
		descriptor.colorAttachments[0].clearColor = MTLClearColor(red: 0, green: 0, blue: 0, alpha: 1)
		descriptor.colorAttachments[0].storeAction = .store
		return descriptor
	}
	
}
