import Foundation
import MetalKit

extension CameraRenderer {
	
	func pipelineDescriptor() -> MTLRenderPipelineDescriptor {
		let pipelineDescriptor = MTLRenderPipelineDescriptor()
		pipelineDescriptor.colorAttachments[0].pixelFormat = pixelFormat
		pipelineDescriptor.vertexFunction = library.makeFunction(name: "vertex_camera_shader_texture")
		pipelineDescriptor.fragmentFunction = library.makeFunction(name: "fragment_camera_shader_texture")
		
		let vertexDescriptorTexture = MTLVertexDescriptor()
		// Vertex
		vertexDescriptorTexture.attributes[0].format = .float3
		vertexDescriptorTexture.attributes[0].offset = 0
		vertexDescriptorTexture.attributes[0].bufferIndex = 0
		// Layout
		vertexDescriptorTexture.attributes[1].format = .float2
		vertexDescriptorTexture.attributes[1].offset = MemoryLayout<simd_float3>.size
		vertexDescriptorTexture.attributes[1].bufferIndex = 0
		vertexDescriptorTexture.layouts[0].stride = MemoryLayout<Vertex>.stride

		pipelineDescriptor.vertexDescriptor = vertexDescriptorTexture
		return pipelineDescriptor
	}
	
}
