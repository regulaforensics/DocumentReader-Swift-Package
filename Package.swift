// swift-tools-version:5.3
import PackageDescription

let packageName = "DocumentReader"

let package = Package(
    name: "DocumentReader",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "DocumentReader",
            targets: ["\(packageName)Common"]),
    ],
    dependencies: [
        .package(name: "RegulaCommon", url: "https://github.com/regulaforensics/RegulaCommon-Swift-Package.git", .exact(Version(stringLiteral: "9.7.2625"))),
    ],
    targets: [
        .binaryTarget(name: "DocumentReader", url: "https://pods.regulaforensics.com/DocumentReader/9.7.6817/DocumentReader-9.7.6817.zip", checksum: "4bc2e9c1db8c190a1ed462239c15eb4679db712679a6bf187b50d7ddced055d1"),
        .target(
            name: "\(packageName)Common",
            dependencies: [
                .target(name: "DocumentReader"),
                .product(name: "RegulaCommon", package: "RegulaCommon")
            ],
            path: "Sources",
            sources: ["dummy.swift"]
        )
    ]
)
