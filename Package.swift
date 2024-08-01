// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "DocumentReader",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "DocumentReader",
            targets: ["SDKDeps"]),
    ],
    dependencies: [
        .package(name: "RegulaCommon", url: "https://github.com/regulaforensics/RegulaCommon-Swift-Package.git", .exact(Version(stringLiteral: "7.2.487"))),
    ],
    targets: [
        .binaryTarget(name: "DocumentReader", url: "https://pods.regulaforensics.com/DocumentReader/7.2.3545/DocumentReader-7.2.3545.zip", checksum: "833b43dba07afceed74e14e8cd6c4c5fb41055da987164ee047f195f4577ab6d"),
        .target(
            name: "SDKDeps",
            dependencies: [
                .target(name: "FaceSDK"),
                .product(name: "RegulaCommon", package: "RegulaCommon")
            ],
            path: "Sources",
            sources: ["dummy.swift"]
        )
    ]
)
