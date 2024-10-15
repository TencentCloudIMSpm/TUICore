// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TUICore",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TUICore",
            targets: ["TUICoreZip"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "TUICoreZip",
                      url: "https://im.sdk.cloud.tencent.cn/download/tuikit/8.2.6325/ios/TUICore.zip",
                      checksum: "37382423e17783c04d4d248b90fcc239f1290c26027925797c7f428effa9b2c9")
    ]
)
