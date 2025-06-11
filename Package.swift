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
        .package(name: "RegulaCommon", url: "https://github.com/regulaforensics/RegulaCommon-Swift-Package.git", .exact(Version(stringLiteral: "7.6.1206-beta"))),
    ],
    targets: [
        .binaryTarget(name: "DocumentReader", url: "https://pods.regulaforensics.com/DocumentReaderBeta/8.1.4628/DocumentReaderBeta-8.1.4628.zip", checksum: "1686ce5025b6a48424344fbdbea0c3d46d8efcc571abcbf3d7727cc68e96d6b3"),
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
