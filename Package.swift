// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "aws-sdk-ios-privacy-manifest",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AWSS3",
            targets: ["AWSS3"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AWSCore",
            path: "AWSCore",
            publicHeadersPath: "Public"
        ),
        .target(
            name: "AWSS3",
            dependencies: ["AWSCore"],
            path: "AWSS3",
            publicHeadersPath: "Public"
        )
    ]
)
