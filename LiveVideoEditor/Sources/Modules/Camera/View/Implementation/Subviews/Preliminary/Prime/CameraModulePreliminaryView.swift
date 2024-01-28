import UIKit
import MetalKit
import UserInterface

final class CameraModulePreliminaryView: UIView {
	
	let metalView: MTKView = MTKView()
	
	// MARK: - Stored Properties / Render
	
	let renderer: CameraRenderer
	
	// MARK: - Life Cycle
	
	override init(frame: CGRect) {
		do {
			renderer = try CameraRenderer()
		} catch {
			fatalError("Camera renderer couldn't be created. \(error)")
		}
		
		super.init(frame: frame)
		
		setupViews()
		setupLayout()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}
