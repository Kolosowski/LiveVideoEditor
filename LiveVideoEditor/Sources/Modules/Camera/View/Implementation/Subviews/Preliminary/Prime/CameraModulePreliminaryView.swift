import UIKit
import UserInterface

final class CameraModulePreliminaryView: UIView {
	
	// MARK: - Stored Properties / Render
	
	var displayLink: CADisplayLink?
	var renderer: CameraRenderer?
	
	// MARK: - Computed Properties / Layers
	
	override class var layerClass: AnyClass {
		CAMetalLayer.self
	}
	
	var metalLayer: CAMetalLayer? {
		layer as? CAMetalLayer
	}
	
}
