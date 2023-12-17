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
		encoder.drawPrimitives(type: .triangleStrip, vertexStart: 0, vertexCount: 4, instanceCount: 1)
		encoder.setFragmentTexture(try texture(from: buffer), index: 0)
		encoder.endEncoding()
		
		commandBuffer.present(drawable)
		commandBuffer.commit()
	}
	
}
