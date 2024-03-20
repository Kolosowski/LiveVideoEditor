import Foundation

protocol CameraModulePresenterProtocol {
	func viewDidLoad()
	func viewDidAppear()
	func didReceive(error: Error)
	func didPressRecord()
	func didReleaseRecord()
}
