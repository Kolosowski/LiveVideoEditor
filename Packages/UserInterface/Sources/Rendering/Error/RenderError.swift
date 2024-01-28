import Foundation

public enum RenderError: Error {
	case deviceCreate
	case queueCreate
	case textureCacheCreate
	case imageBufferCreate
	case textureCreate
	case bufferCreate
}
