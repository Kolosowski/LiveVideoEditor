import Foundation

extension RootModulePresenter: RootModulePresenterProtocol {
	
	func viewDidLoad() {
		router.presentCamera()
	}
	
}
