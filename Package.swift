// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "OpenCloudKit",
    dependencies: [
        .package(url: "https://github.com/vapor-community/clibressl.git", .branch("master")),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", .upToNextMinor(from: "0.12.0")),
        .package(url:  "https://github.com/rhunt222/Jay.git", .branch("master"))
        ]
)

#if os(Linux)
    package.exclude.append("Sources/CLLocation+OpenCloudKit.swift")
#endif
 
