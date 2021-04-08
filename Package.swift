// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SampleAppPackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SampleAppPackage",
            targets: ["SampleAppPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftGen/SwiftGen", .exact("6.4.0")),
        .package(url: "https://github.com/realm/SwiftLint", .exact("0.43.1")),
        .package(url: "https://github.com/grpc/grpc-swift", .exact("1.0.0")),
        .package(url: "https://github.com/nicklockwood/SwiftFormat", .exact("0.47.13")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SampleAppPackage",
            dependencies: []),
        .testTarget(
            name: "SampleAppPackageTests",
            dependencies: ["SampleAppPackage"]),
    ]
)
