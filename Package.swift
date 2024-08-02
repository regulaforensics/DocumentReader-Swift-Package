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
        .package(name: "RegulaCommon", url: "https://github.com/regulaforensics/RegulaCommon-Swift-Package.git", .exact(Version(stringLiteral: "7.3.683"))),
    ],
    targets: [
        .binaryTarget(name: "DocumentReader", url: "https://pods.regulaforensics.com/DocumentReader/7.3.3764/DocumentReader-7.3.3764.zip", checksum: "6c93f00e2ead97043a4ade68cb820edebf2a456a76ef7af2d63fa74cd8516ffc"),
        .target(
            name: "SDKDeps",
            dependencies: [
                .target(name: "DocumentReader"),
                .product(name: "RegulaCommon", package: "RegulaCommon")
            ],
            path: "Sources",
            sources: ["dummy.swift"]
        )
    ]
)
