// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Tab3Navigation",
    platforms: [.iOS(.v17)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Tab3Navigation",
            targets: ["Tab3Navigation"]),
    ],
    dependencies: [
        .package(path: "Navigation"),
        .package(path: "MicroApp3"),
        .package(path: "MicroApp4"),
        .package(path: "MicroApp5"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Tab3Navigation",
            dependencies: ["Navigation", "MicroApp3", "MicroApp4", "MicroApp5"]),
        .testTarget(
            name: "Tab3NavigationTests",
            dependencies: ["Tab3Navigation"]),
    ]
)
