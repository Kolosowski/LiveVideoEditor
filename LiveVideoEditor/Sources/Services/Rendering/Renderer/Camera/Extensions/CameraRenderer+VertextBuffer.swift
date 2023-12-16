import Foundation
import MetalKit

extension CameraRenderer {
	
	func vertexBuffer() throws -> MTLBuffer {
		let vertexData: [Float] = [
			-1, -1, 0, 1,
			 1, -1, 0, 1,
			 0, 1, 0, 1
		]
		
		guard let buffer = device.makeBuffer(
			bytes: vertexData,
			length: vertexData.count * MemoryLayout<Float>.stride
		) else {
			throw RenderError.vertexBufferCreate
		}
		
		return buffer
	}
	
}
