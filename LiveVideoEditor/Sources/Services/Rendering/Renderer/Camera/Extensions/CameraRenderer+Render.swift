import Foundation
import MetalKit
import CoreMedia.CMSampleBuffer

extension CameraRenderer {
	
	func render(_ buffer: CMSampleBuffer, drawable: CAMetalDrawable) throws {
		guard let commandBuffer = queue.makeCommandBuffer() else {
			throw RenderError.commandBufferCreate
		}
		
		guard let encoder = commandBuffer.makeRenderCommandEncoder(descriptor: passDescriptor(drawable: drawable)) else {
			throw RenderError.encoderCreate
		}
		encoder.setRenderPipelineState(pipelineState)
		encoder.setVertexBuffer(try vertexBuffer(), offset: 0, index: 0)
		encoder.setFragmentTexture(try texture(from: buffer), index: 0)
		encoder.endEncoding()
		
		commandBuffer.present(drawable)
		commandBuffer.commit()
	}
	
}
