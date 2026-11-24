// swift-tools-version:5.5
import PackageDescription

let packageName = "DocumentReader"

let package = Package(
    name: "DocumentReader",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "DocumentReader",
            targets: ["\(packageName)Common"]),
    ],
    dependencies: [
        .package(
            name: "RegulaCommon",
            url: "https://github.com/regulaforensics/RegulaCommon-Swift-Package.git",
            .exact("9.10.3066-rc")),
    ],
    targets: [
        .binaryTarget(
            name: "DocumentReader",
            url: "https://pods.regulaforensics.com/Stage/DocumentReaderStage/9.10.7416/DocumentReaderStage-9.10.7416.zip",
            checksum: "97410a661d05ed0f89d3b1370b1f40c23edfe71eeef8e16b6e1b18a68907dfc1"),
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
