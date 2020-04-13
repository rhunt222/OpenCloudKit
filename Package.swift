// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "OpenCloudKit",
    dependencies: [
        .package(url: "https://github.com/vapor-community/clibressl.git", majorVersion: 1),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", majorVersion: 0),
        .package(url:  "https://github.com/DanToml/Jay.git", majorVersion: 1)
        ]
)

#if os(Linux)
    package.exclude.append("Sources/CLLocation+OpenCloudKit.swift")
#endif
 
