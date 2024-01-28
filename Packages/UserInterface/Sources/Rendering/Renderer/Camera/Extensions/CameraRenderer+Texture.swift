import Foundation
import Metal
import CoreMedia.CMSampleBuffer

extension CameraRenderer {
	
	func texture(from buffer: CMSampleBuffer) throws -> MTLTexture {
		guard let buffer = CMSampleBufferGetImageBuffer(buffer) else {
			throw RenderError.imageBufferCreate
		}
		
		var texture: CVMetalTexture?
		let result = CVMetalTextureCacheCreateTextureFromImage(
			kCFAllocatorDefault,
			textureCache,
			buffer,
			nil,
			pixelFormat,
			CVPixelBufferGetWidth(buffer),
			CVPixelBufferGetHeight(buffer),
			0,
			&texture
		)
		
		guard
			result == kCVReturnSuccess,
			let texture,
			let texture = CVMetalTextureGetTexture(texture)
		else {
			throw RenderError.textureCreate
		}
		return texture
	}
	
}
