import UIKit

extension CameraModuleRecordButton {
	
	func setupLayout() {
		[
			strokeView,
			actionView
		].forEach {
			addSubview($0)
			$0.translatesAutoresizingMaskIntoConstraints = false
		}
		
		NSLayoutConstraint.activate([
			strokeView.topAnchor.constraint(
				equalTo: topAnchor
			),
			strokeView.leadingAnchor.constraint(
				equalTo: leadingAnchor
			),
			strokeView.bottomAnchor.constraint(
				equalTo: bottomAnchor
			),
			strokeView.trailingAnchor.constraint(
				equalTo: trailingAnchor
			),
			
			actionView.topAnchor.constraint(
				equalTo: strokeView.topAnchor,
				constant: Constants.actionViewInsets
			),
			actionView.leadingAnchor.constraint(
				equalTo: strokeView.leadingAnchor,
				constant: Constants.actionViewInsets
			),
			actionView.bottomAnchor.constraint(
				equalTo: strokeView.bottomAnchor,
				constant: -Constants.actionViewInsets
			),
			actionView.trailingAnchor.constraint(
				equalTo: strokeView.trailingAnchor,
				constant: -Constants.actionViewInsets
			)
		])
	}
	
}
