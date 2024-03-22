import Metal

extension CameraRenderer {
	
	func renderPassDescriptor(_ texture: MTLTexture?) -> MTLRenderPassDescriptor {
		let passDescriptor = MTLRenderPassDescriptor()
		passDescriptor.colorAttachments[0].clearColor = MTLClearColorMake(0.5, 1, 1, 1)
		passDescriptor.colorAttachments[0].texture = texture
		return passDescriptor
	}
	
}
