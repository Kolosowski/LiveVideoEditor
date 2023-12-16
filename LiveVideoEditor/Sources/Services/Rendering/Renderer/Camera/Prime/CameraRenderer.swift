import Foundation
import MetalKit

final class CameraRenderer: Renderer {
	
	// MARK: - Stored Properties / Tools
	
	let pixelFormat: MTLPixelFormat = .bgra8Unorm
	private(set) var pipelineState: MTLRenderPipelineState!
	private(set) var textureCache: CVMetalTextureCache!
	
	// MARK: - Life Cycle
	
	override init() throws {
		try super.init()
		
		let pipelineDescriptor = MTLRenderPipelineDescriptor()
		pipelineDescriptor.vertexFunction = library.makeFunction(name: "vertex_camera")
		pipelineDescriptor.fragmentFunction = library.makeFunction(name: "fragment_camera")
		pipelineDescriptor.colorAttachments[0].pixelFormat = pixelFormat
		pipelineState = try device.makeRenderPipelineState(descriptor: pipelineDescriptor)
		
		guard CVMetalTextureCacheCreate(kCFAllocatorDefault, nil, device, nil, &textureCache) == kCVReturnSuccess else {
			throw RenderError.textureCacheCreate
		}
	}
	
}
