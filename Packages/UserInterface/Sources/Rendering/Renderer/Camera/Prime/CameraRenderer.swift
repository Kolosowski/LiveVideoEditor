import Foundation
import simd
import Metal
import CoreVideo.CVMetalTextureCache

public final class CameraRenderer: Renderer {
	
	// MARK: - Stored Properties / Tools
	
	public let pixelFormat: MTLPixelFormat = .bgra8Unorm
	public private(set) var textureCache: CVMetalTextureCache!
	public private(set) var pipelineState: MTLRenderPipelineState!
	public private(set) var samplerState: MTLSamplerState!
	
	// MARK: - Stored Properties / Buffers
	
	private(set) var vertexBuffer: MTLBuffer!
	private(set) var indicesBuffer: MTLBuffer!
	
	// MARK: - Stored Properties / Texture
	
	var texture: MTLTexture?
	let indexedPrimitives: [UInt16] = [
		0, 1, 2,
		2, 3, 0,
	]
	let vertices: [Vertex] = [
		Vertex(
			position: float3(-1, 0.1, 0),
			texture: float2(0, 1)
		),
		Vertex(
			position: float3(-1, -0.1, 0),
			texture: float2(0, 0)
		),
		Vertex(
			position: float3(1, -0.1, 0),
			texture: float2(1, 0)
		),
		Vertex(
			position: float3(1, 0.1, 0),
			texture: float2(1, 1)
		),
	]
	
	// MARK: - Life Cycle
	
	public override init() throws {
		try super.init()
		
		pipelineState = try device.makeRenderPipelineState(descriptor: pipelineDescriptor())
		samplerState = device.makeSamplerState(descriptor: samplerDescriptor())
		
		guard CVMetalTextureCacheCreate(kCFAllocatorDefault, nil, device, nil, &textureCache) == kCVReturnSuccess else {
			throw RenderError.textureCacheCreate
		}
		
		guard let buffer = device.makeBuffer(
			bytes: vertices,
			length: vertices.count * MemoryLayout<Vertex>.stride,
			options: []
		) else {
			throw RenderError.bufferCreate
		}
		vertexBuffer = buffer
		
		guard let buffer = device.makeBuffer(
			bytes: indexedPrimitives,
			length: indexedPrimitives.count * MemoryLayout<UInt16>.stride,
			options: []
		) else {
			throw RenderError.bufferCreate
		}
		indicesBuffer = buffer
	}
	
}
