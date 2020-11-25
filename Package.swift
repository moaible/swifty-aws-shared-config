// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swifty-aws-shared-config",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "swifty-aws-shared-config",
            targets: ["swifty-aws-shared-config"]),
    ],
    dependencies: [
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "swifty-aws-shared-config",
            dependencies: []),
        .testTarget(
            name: "swifty-aws-shared-configTests",
            dependencies: ["swifty-aws-shared-config"]),
    ]
)
