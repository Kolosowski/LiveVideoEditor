import Metal
import CoreMedia.CMSampleBuffer

extension CameraRenderer {
	
	public func process(buffer: CMSampleBuffer) throws {
		guard let textureCache else {
			return
		}
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
		self.texture = texture
	}
	
}
