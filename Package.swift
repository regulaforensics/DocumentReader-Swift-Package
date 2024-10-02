// swift-tools-version:5.3
import PackageDescription

let packageName = "DocumentReader"

let package = Package(
    name: "DocumentReader",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "DocumentReader",
            targets: ["\(packageName)Common"]),
    ],
    dependencies: [
        .package(name: "RegulaCommon", url: "https://github.com/regulaforensics/RegulaCommon-Swift-Package.git", .exact(Version(stringLiteral: "7.4.795"))),
    ],
    targets: [
        .binaryTarget(name: "DocumentReader", url: "https://pods.regulaforensics.com/DocumentReader/7.4.3900/DocumentReader-7.4.3900.zip", checksum: "da2a869525157c9a2dcfaefbc5107c2281dce0126d3a3577195ccecaf4c9104d"),
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
