// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MicroApp5",
    platforms: [.iOS(.v17)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MicroApp5",
            targets: ["MicroApp5", "MicroApp5Navigation"]),
    ],
    dependencies: [
        .package(path: "Navigation"),
        .package(path: "CommonUI")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MicroApp5",
            dependencies: ["Navigation", "CommonUI"]),
        .target(
            name: "MicroApp5Navigation",
            dependencies: ["Navigation", "MicroApp5"]),
        .testTarget(
            name: "MicroApp5Tests",
            dependencies: ["MicroApp5"]),
    ]
)
