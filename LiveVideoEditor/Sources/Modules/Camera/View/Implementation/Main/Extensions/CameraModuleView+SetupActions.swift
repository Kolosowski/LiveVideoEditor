import UIKit
import Combine

extension CameraModuleView {
	
	func setupActions() {
		recordButton.touchesBegan = { [weak self] in
			self?.presenter.didPressRecord()
		}
		recordButton.touchesEnded = { [weak self] in
			self?.presenter.didReleaseRecord()
		}
	}
	
}
