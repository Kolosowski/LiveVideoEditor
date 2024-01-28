import Foundation
import MetalKit

extension CameraRenderer {
	
	public func draw(
		_ drawable: CAMetalDrawable,
		passDescriptor: MTLRenderPassDescriptor
	) {
		guard
			let buffer = queue.makeCommandBuffer(),
			let encoder = buffer.makeRenderCommandEncoder(descriptor: passDescriptor)
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
