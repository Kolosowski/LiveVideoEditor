import Foundation
import UserInterface

extension CameraModulePreliminaryView {
	
	func setup() throws {
		renderer = try CameraRenderer()
		setupLayers()
		setupDisplayLink()
	}
	
}
