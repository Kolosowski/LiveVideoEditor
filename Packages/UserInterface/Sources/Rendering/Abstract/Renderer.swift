import Metal

open class Renderer {
	
	// MARK: - Stored Properties / Tools
	
	public let device: MTLDevice
	
	let queue: MTLCommandQueue
	let library: MTLLibrary
	
	// MARK: - Life Cycle
	
	public init() throws {
		guard let device = MTLCreateSystemDefaultDevice() else {
			throw RenderError.deviceCreate
		}
		self.device = device
		
		guard let queue = device.makeCommandQueue() else {
			throw RenderError.queueCreate
		}
		self.queue = queue
		
		self.library = try device.makeDefaultLibrary(bundle: .module)
	}
	
}
