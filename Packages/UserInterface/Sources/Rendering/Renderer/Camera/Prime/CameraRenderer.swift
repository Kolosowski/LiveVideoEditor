import Foundation
import MetalKit

public final class CameraRenderer: Renderer {
	
	// MARK: - Stored Properties / Tools
	
	public let pixelFormat: MTLPixelFormat = .bgra8Unorm
	public private(set) var pipelineState: MTLRenderPipelineState!
	public private(set) var textureCache: CVMetalTextureCache!
	
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
