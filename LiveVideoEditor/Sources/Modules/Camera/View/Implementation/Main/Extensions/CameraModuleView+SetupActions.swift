import UIKit
import Combine

extension CameraModuleView {
	
	func setupActions() {
		recordButton.touchesBegan = { [weak self] in
			self?.presenter.didStartTouching()
		}
		recordButton.touchesEnded = { [weak self] in
			self?.presenter.didEndTouching()
		}
	}
	
}
