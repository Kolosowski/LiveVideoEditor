import UIKit

extension RootModuleRouter: RootModuleRouterProtocol {
	
	func presentCamera() {
		let camera = CameraModuleBuilder(container).module(delegate: nil).view
		
		view?.rootViewController = camera
	}
	
}
