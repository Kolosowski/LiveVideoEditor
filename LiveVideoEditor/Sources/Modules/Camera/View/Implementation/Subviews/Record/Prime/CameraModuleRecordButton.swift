import UIKit

final class CameraModuleRecordButton: UIView {
	
	// MARK: - Stored Properties / Actions
	
	var touchesBegan: (() -> Void)?
	var touchesEnded: (() -> Void)?
	
	// MARK: - Stored Properties / Views
	
	let strokeView: UIView = UIView()
	let actionView: UIView = UIView()
	
	// MARK: - Life Cycle
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		setupViews()
		setupLayout()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	// MARK: - Render Loop
	
	override func layoutSubviews() {
		super.layoutSubviews()
		
		strokeView.layer.cornerRadius = strokeView.bounds.width * 0.5
		actionView.layer.cornerRadius = actionView.bounds.width * 0.5
	}
	
	// MARK: - Gestures
	
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		updateActionView(
			scale: 0.9,
			animated: true
		)
		touchesBegan?()
	}
	
	override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
		updateActionView(
			scale: 1,
			animated: true
		)
		touchesEnded?()
	}
	
}
