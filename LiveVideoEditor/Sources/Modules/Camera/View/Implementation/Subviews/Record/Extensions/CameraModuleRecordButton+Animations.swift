import UIKit

extension CameraModuleRecordButton {
	
	func updateActionView(scale: CGFloat, animated: Bool) {
		let animation = CABasicAnimation(keyPath: "transform.scale")
		animation.toValue = scale
		animation.duration = animated ? 0.15 : 0
		animation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
		animation.fillMode = .forwards
		animation.isRemovedOnCompletion = false
		actionView.layer.add(animation, forKey: nil)
	}
	
}
