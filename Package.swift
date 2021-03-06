// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SampleAppPackage",
    defaultLocalization: "ja",
    platforms: [
        .iOS(.v14),
        .macOS(.v10_12),
    ],
    products: [
        .library(
            name: "SampleAppPackage",
            type: .dynamic,
            targets: ["SampleAppPackage"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/taoshotaro/VueFlux", .branch("support-spm")),
    ],

    targets: [
        // Carthage で追加したパッケージを使用する場合、 binaryTarget で追加する
        // .binaryTarget(name: "VueFlux", path: "Carthage/Build/VueFlux.xcframework"),
        .target(
            name: "SampleAppPackage",
            dependencies: [
                .product(name: "VueFlux", package: "VueFlux"),
//                .target(name: "VueFlux"),
            ],
            resources: [
                // Resources 内で 画像を置いている場合、なぜか png しか　Image や　UIImage で参照する際に画像として認識してくれない
//                .process("Resources/"),
            ]),
        .testTarget(
            name: "SampleAppPackageTests",
            dependencies: ["SampleAppPackage"]),
    ]
)
