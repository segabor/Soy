// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "SoyKit",
    products: [
        .library(
            name: "SoyKit",
            targets: ["SoyKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "SoyKit",
            dependencies: []),
        .testTarget(
            name: "SoyKitTests",
            dependencies: ["SoyKit"]),
    ]
)
