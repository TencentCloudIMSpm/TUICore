// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TUICore",
    defaultLocalization:"en",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TUICore",
            targets: ["TUICore"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.19.7"),
        .package(url: "https://github.com/Cologne88/TXIMSDK_Plus_iOS.git",from: "8.2.6325"),
      ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "TUICore",
                dependencies: ["SDWebImage","TXIMSDK_Plus_iOS"],
                resources: [
                    .copy("Resources/.")
                ]
               )
    ]
)
