// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SampleAppPackage",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "SampleAppPackage",
            targets: ["SampleAppPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftGen/SwiftGen", .exact("6.4.0")),
        .package(url: "https://github.com/realm/SwiftLint", .exact("0.43.1")),
        .package(url: "https://github.com/grpc/grpc-swift", .exact("1.0.0")),
        .package(url: "https://github.com/nicklockwood/SwiftFormat", .exact("0.47.13")),
        .package(name: "Firebase", url: "https://github.com/firebase/firebase-ios-sdk.git", .branch("7.0-spm-beta")),
    ],
    targets: [
        .target(
            name: "SampleAppPackage",
            dependencies: [
                .product(name: "FirebaseAuth", package: "Firebase"),
            ]),
        .testTarget(
            name: "SampleAppPackageTests",
            dependencies: ["SampleAppPackage"]),
    ]
)
