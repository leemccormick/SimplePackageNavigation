// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MicroApp4",
    platforms: [.iOS(.v17)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MicroApp4",
            targets: ["MicroApp4", "MicroApp4Navigation"]),
    ],
    dependencies: [
        .package(path: "Navigation"),
        .package(path: "CommonUI")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MicroApp4",
            dependencies: ["Navigation", "CommonUI"]),
        .target(
            name: "MicroApp4Navigation",
            dependencies: ["Navigation"]),
        .testTarget(
            name: "MicroApp4Tests",
            dependencies: ["MicroApp4"]),
    ]
)
