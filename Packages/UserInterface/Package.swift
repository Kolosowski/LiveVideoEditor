// swift-tools-version: 5.9

import PackageDescription

let package = Package(
	name: "UserInterface",
	platforms: [.iOS(.v15)],
	products: [
		.library(
			name: "UserInterface",
			type: .static,
			targets: ["UserInterface"]
		)
	],
	targets: [
		.target(
			name: "UserInterface",
			path: "Sources/",
			resources: [
				.process("Rendering/Shaders/Shaders.metal")
			]
		)
	],
	swiftLanguageVersions: [.v5]
)

