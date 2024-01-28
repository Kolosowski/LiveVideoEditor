import UIKit
import UserInterface

final class CameraModulePreliminaryView: UIView {
	
	// MARK: - Stored Properties / Render
	
	var displayLink: CADisplayLink?
	let renderer: CameraRenderer
	
	// MARK: - Computed Properties / Layers
	
	override class var layerClass: AnyClass {
		CAMetalLayer.self
	}
	
	// MARK: - Life Cycle
	
	override init(frame: CGRect) {
		do {
			renderer = try CameraRenderer()
		} catch {
			fatalError("Camera renderer couldn't be created. \(error)")
		}
		
		super.init(frame: frame)
		
		setupLayers()
		setupDisplayLink()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}
