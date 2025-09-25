// swift-tools-version:5.9
import PackageDescription


//let swiftSettings: [SwiftSetting] = []
let swiftSettings: [SwiftSetting] = [.enableExperimentalFeature("StrictConcurrency")]

let package = Package(
	name: "xlogger",
	products: [
		.library(name: "XLogger", targets: ["XLogger"]),
	],
	dependencies: [
		.package(url: "https://github.com/apple/swift-log.git", from: "1.5.1"),
	],
	targets: [
		.target(name: "XLogger", dependencies: [
			.product(name: "Logging", package: "swift-log"),
		], path: "Sources", swiftSettings: swiftSettings),
		.testTarget(name: "XLoggerTests", dependencies: ["XLogger"], swiftSettings: swiftSettings)
	]
)
