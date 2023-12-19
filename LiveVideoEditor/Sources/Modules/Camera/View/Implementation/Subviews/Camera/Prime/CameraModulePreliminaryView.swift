import UIKit

final class CameraModulePreliminaryView: UIView {
	
	// MARK: - Computed Properties / Layer
	
	override class var layerClass: AnyClass {
		CAMetalLayer.self
	}
	
	// MARK: - Life Cycle
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		setupViews()
		setupLayout()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}
