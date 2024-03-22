import simd
import Metal

extension CameraRenderer {
	
	func pipelineDescriptor() -> MTLRenderPipelineDescriptor {
		let pipelineDescriptor = MTLRenderPipelineDescriptor()
		pipelineDescriptor.colorAttachments[0].pixelFormat = pixelFormat
		pipelineDescriptor.vertexFunction = library.makeFunction(name: "vertex_camera_shader")
		pipelineDescriptor.fragmentFunction = library.makeFunction(name: "fragment_camera_shader")
		
		let vertexDescriptorTexture = MTLVertexDescriptor()
		// Vertex Position
		vertexDescriptorTexture.attributes[0].format = .float4
		vertexDescriptorTexture.attributes[0].offset = 0
		vertexDescriptorTexture.attributes[0].bufferIndex = 0
		// Texture Coordinate
		vertexDescriptorTexture.attributes[1].format = .float3
		vertexDescriptorTexture.attributes[1].offset = MemoryLayout<float4>.size
		vertexDescriptorTexture.attributes[1].bufferIndex = 0
		// Stride
		vertexDescriptorTexture.layouts[0].stride = MemoryLayout<Vertex>.stride
		
		pipelineDescriptor.vertexDescriptor = vertexDescriptorTexture
		return pipelineDescriptor
	}
	
}
