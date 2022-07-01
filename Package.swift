// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ApiClient",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "ApiClient",
            targets: ["ApiClient"]),
    ],
    dependencies: [
      // Micro version of the Moya network abstraction layer written in Swift.
      .package(url: "https://github.com/Flinesoft/Microya.git", branch: "main")
    ],
    targets: [
        .target(
            name: "ApiClient",
            dependencies: [
              .product(name: "Microya", package: "Microya"),
            ]),
        .testTarget(
            name: "ApiClientTests",
            dependencies: ["ApiClient"]),
    ]
)
