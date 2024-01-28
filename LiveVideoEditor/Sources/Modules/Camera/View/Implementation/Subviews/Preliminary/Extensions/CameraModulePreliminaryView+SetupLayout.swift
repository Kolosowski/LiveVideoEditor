import UIKit

extension CameraModulePreliminaryView {
	
	func setupLayout() {
		[
			metalView
		].forEach {
			addSubview($0)
			$0.translatesAutoresizingMaskIntoConstraints = false
		}
		
		NSLayoutConstraint.activate([
			metalView.topAnchor.constraint(
				equalTo: topAnchor
			),
			metalView.leadingAnchor.constraint(
				equalTo: leadingAnchor
			),
			metalView.bottomAnchor.constraint(
				equalTo: bottomAnchor
			),
			metalView.trailingAnchor.constraint(
				equalTo: trailingAnchor
			)
		])
	}
	
}
