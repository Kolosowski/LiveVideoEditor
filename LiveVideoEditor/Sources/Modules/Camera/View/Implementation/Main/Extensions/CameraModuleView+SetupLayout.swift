import UIKit

extension CameraModuleView {
	
	func setupLayout() {
		[
			preliminaryView
		].forEach {
			view.addSubview($0)
			$0.translatesAutoresizingMaskIntoConstraints = false
		}
		
		NSLayoutConstraint.activate([
			preliminaryView.topAnchor.constraint(
				equalTo: view.topAnchor
			),
			preliminaryView.leadingAnchor.constraint(
				equalTo: view.leadingAnchor
			),
			preliminaryView.bottomAnchor.constraint(
				equalTo: view.bottomAnchor
			),
			preliminaryView.trailingAnchor.constraint(
				equalTo: view.trailingAnchor
			)
		])
	}
	
}
