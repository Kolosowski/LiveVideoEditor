import UIKit
import Combine

final class CameraModuleView: UIViewController {
	
	// MARK: - Stored Properties / References
	
	let presenter: CameraModulePresenterProtocol
	
	// MARK: - Stored Properties / Combine
	
	var cancellables: Set<AnyCancellable> = []
	
	// MARK: - Stored Properties / Views
	
	let preliminaryView: CameraModulePreliminaryView = CameraModulePreliminaryView()
	let recordButton: CameraModuleRecordButton = CameraModuleRecordButton()
	
	// MARK: - Computed Properties / Orientation
	
	override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
		.portrait
	}
	
	// MARK: - Life Cycle
	
	init(presenter: CameraModulePresenterProtocol) {
		self.presenter = presenter
		
		super.init(
			nibName: nil,
			bundle: nil
		)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		presenter.viewDidLoad()
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		
		presenter.viewDidAppear()
	}
	
}
