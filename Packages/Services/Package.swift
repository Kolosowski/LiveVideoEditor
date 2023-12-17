// swift-tools-version: 5.7

import PackageDescription

let package = Package(
	name: "Services",
	platforms: [.iOS(.v15)],
	products: [
		.library(
			name: "Services",
			type: .static,
			targets: ["Services"]
		)
	],
	targets: [
		.target(
			name: "Services",
			path: "Sources/"
		)
	],
	swiftLanguageVersions: [.v5]
)

