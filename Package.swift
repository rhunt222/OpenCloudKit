// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "OpenCloudKit",
    dependencies: [
        .Package(url: "https://github.com/vapor-community/clibressl.git", .branch("master")),
        .Package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", majorVersion: 0),
        .Package(url:  "https://github.com/DanToml/Jay.git", majorVersion: 1)
        ]
)

#if os(Linux)
    package.exclude.append("Sources/CLLocation+OpenCloudKit.swift")
#endif
 
