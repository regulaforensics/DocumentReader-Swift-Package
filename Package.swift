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
            .exact("9.10.3008-rc")),
    ],
    targets: [
        .binaryTarget(
            name: "DocumentReader",
            url: "https://pods.regulaforensics.com/Stage/DocumentReaderStage/9.10.7311/DocumentReaderStage-9.10.7311.zip",
            checksum: "6c91ffa23dc04ebe4b25be85b70f63ccdcadf60de2770d8a44f3187811a802a9"),
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
