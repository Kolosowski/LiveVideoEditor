import Metal

extension CameraRenderer {
	
	func renderPassDescriptor(_ texture: MTLTexture?) -> MTLRenderPassDescriptor {
		let passDescriptor = MTLRenderPassDescriptor()
		passDescriptor.colorAttachments[0].loadAction = .clear
		passDescriptor.colorAttachments[0].storeAction = .store
		passDescriptor.colorAttachments[0].clearColor = MTLClearColorMake(0, 1, 1, 1)
		passDescriptor.colorAttachments[0].texture = texture
		return passDescriptor
	}
	
}
