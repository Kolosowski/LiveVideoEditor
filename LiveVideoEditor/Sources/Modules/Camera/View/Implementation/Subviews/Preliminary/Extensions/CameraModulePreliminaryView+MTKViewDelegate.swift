import Foundation
import MetalKit

extension CameraModulePreliminaryView: MTKViewDelegate {
	
	func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize) {
		debugPrint("Drawable size will change \(size).")
	}
	
	func draw(in view: MTKView) {
		guard
			let drawable = view.currentDrawable,
			let passDescriptor = view.currentRenderPassDescriptor
		else {
			assertionFailure("Couldn't get render data from metal view.")
			return
		}
		renderer.draw(
			drawable,
			passDescriptor: passDescriptor
		)
	}
	
}
