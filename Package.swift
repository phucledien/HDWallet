// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "HDWalletKit",
    platforms: [
       .iOS(.v11),
       .macOS(.v10_12)
    ],
    products: [
        .library(
            name: "HDWalletKit",
            targets: ["HDWalletKit"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "HDWalletKit",
            dependencies: []),
        .testTarget(
            name: "HDWalletKit_Tests",
            dependencies: []),
    ],
    swiftLanguageVersions: [.v5]
)
