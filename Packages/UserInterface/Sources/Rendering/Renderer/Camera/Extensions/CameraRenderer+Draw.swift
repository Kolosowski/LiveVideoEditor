import QuartzCore.CAMetalLayer

extension CameraRenderer {
	
	public func draw(_ drawable: CAMetalDrawable) {
		guard
			let buffer = queue.makeCommandBuffer(),
			let encoder = buffer.makeRenderCommandEncoder(descriptor: renderPassDescriptor(drawable.texture))
		else {
			return
		}
		
		encoder.setRenderPipelineState(pipelineState)
		encoder.setVertexBuffer(
			vertexBuffer,
			offset: 0,
			index: 0
		)
		encoder.setFragmentSamplerState(
			samplerState,
			index: 0
		)
		encoder.setFragmentTexture(
			texture,
			index: 0
		)
		encoder.drawIndexedPrimitives(
			type: .triangle,
			indexCount: indexedPrimitives.count,
			indexType: .uint16,
			indexBuffer: indicesBuffer,
			indexBufferOffset: 0
		)
		encoder.endEncoding()
		
		buffer.present(drawable)
		buffer.commit()
	}
	
}
