// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ApiClient",
    products: [
        .library(
            name: "ApiClient",
            targets: ["ApiClient"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "ApiClient",
            dependencies: []),
        .testTarget(
            name: "ApiClientTests",
            dependencies: ["ApiClient"]),
    ]
)
