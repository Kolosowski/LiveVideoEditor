import Foundation

enum RenderError: Error {
	case deviceCreate
	case queueCreate
	case libraryCreate
	case commandBufferCreate
	case encoderCreate
	case textureCacheCreate
	case textureCreate
	case imageBufferCreate
	case vertexBufferCreate
}
