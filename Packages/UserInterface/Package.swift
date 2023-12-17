// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

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
			path: "Sources/"
		)
	],
	swiftLanguageVersions: [.v5]
)

