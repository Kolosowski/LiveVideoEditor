import UIKit

extension CameraModuleView {
	
	func setupLayout() {
		[
			preliminaryView,
			recordButton
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
			),
			
			recordButton.centerXAnchor.constraint(
				equalTo: view.centerXAnchor
			),
			recordButton.bottomAnchor.constraint(
				equalTo: view.safeAreaLayoutGuide.bottomAnchor,
				constant: -68
			),
			recordButton.widthAnchor.constraint(
				equalToConstant: 88
			),
			recordButton.heightAnchor.constraint(
				equalTo: recordButton.widthAnchor
			)
		])
	}
	
}
