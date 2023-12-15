import UIKit

final class RootModuleView: UIWindow {
	
	// MARK: - Stored Properties / References
	
	let presenter: RootModulePresenterProtocol
	
	// MARK: - Life Cycle
	
	init(presenter: RootModulePresenterProtocol) {
		self.presenter = presenter
		
		super.init(frame: UIScreen.main.bounds)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func makeKeyAndVisible() {
		super.makeKeyAndVisible()
		
		presenter.viewDidLoad()
	}
	
}
