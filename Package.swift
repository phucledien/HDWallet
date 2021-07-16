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
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.0.0"),
        .package(name: "secp256k1", url: "https://github.com/Boilertalk/secp256k1.swift.git", from: "0.1.1"),
    ],
    targets: [
        .target(
            name: "HDWalletKit",
            dependencies: [
                .product(name: "CryptoSwift", package: "CryptoSwift"),
                .product(name: "secp256k1", package: "secp256k1"),
            ],
            path: "HDWalletKit"),
        .testTarget(
            name: "HDWalletKit_Tests",
            dependencies: []),
    ],
    swiftLanguageVersions: [.v5]
)
