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
        .package(name: "RegulaCommon", url: "https://github.com/regulaforensics/RegulaCommon-Swift-Package.git", .exact(Version(stringLiteral: "9.2.1988"))),
    ],
    targets: [
        .binaryTarget(name: "DocumentReader", url: "https://pods.regulaforensics.com/DocumentReader/9.2.5958/DocumentReader-9.2.5958.zip", checksum: "012ed5c86681a1d38ea93aa89c0eb7fd0ff97bea60bcb0784b613d3526fec63c"),
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
