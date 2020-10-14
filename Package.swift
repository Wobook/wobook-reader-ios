// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "PressKit",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "PressKit",
            targets: ["PressKit"])
    ],
    targets: [
        .binaryTarget(
            name: "PressKit",
            url: "https://github.com/Wobook/wobook-reader-ios/releases/download/v3/PressKit.xcframework.zip",
        )
    ]
)
