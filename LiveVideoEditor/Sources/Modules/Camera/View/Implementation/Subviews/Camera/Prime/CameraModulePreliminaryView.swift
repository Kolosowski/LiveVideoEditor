import UIKit
import UserInterface

final class CameraModulePreliminaryView: UIView {
	
	// MARK: - Stored Properties / Render
	
	let renderer: CameraRenderer
	
	// MARK: - Computed Properties / Layer
	
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
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		
		(layer as? CAMetalLayer)?.drawableSize = bounds.size
	}
	
}
