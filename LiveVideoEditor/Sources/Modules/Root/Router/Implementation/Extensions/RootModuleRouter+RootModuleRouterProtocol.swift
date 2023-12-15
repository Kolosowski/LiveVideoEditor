import UIKit

extension RootModuleRouter: RootModuleRouterProtocol {
	
	func presentCamera() {
		do {
			let camera = try CameraModuleBuilder(container).module(delegate: nil).view
			view?.rootViewController = camera
		} catch {
			assertionFailure("Couldn't create 'Camera' module. \(error)")
		}
	}
	
}
