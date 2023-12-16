import Foundation
import MetalKit

class Renderer {
	
	// MARK: - Stored Properties / Tools
	
	let device: MTLDevice
	let queue: MTLCommandQueue
	let library: MTLLibrary
	
	// MARK: - Life Cycle
	
	init() throws {
		guard let device = MTLCreateSystemDefaultDevice() else {
			throw RenderError.deviceCreate
		}
		self.device = device
		
		guard let queue = device.makeCommandQueue() else {
			throw RenderError.queueCreate
		}
		self.queue = queue
		
		guard let library = device.makeDefaultLibrary() else {
			throw RenderError.libraryCreate
		}
		self.library = library
	}
	
}
