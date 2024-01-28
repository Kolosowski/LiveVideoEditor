import Metal

extension CameraRenderer {
	
	func samplerDescriptor() -> MTLSamplerDescriptor {
		let descriptor = MTLSamplerDescriptor()
		descriptor.minFilter = .linear
		descriptor.magFilter = .linear
		return descriptor
	}
	
}
