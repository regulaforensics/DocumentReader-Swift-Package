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
            .exact("9.11.3081-nightly")),
    ],
    targets: [
        .binaryTarget(
            name: "DocumentReader",
            url: "https://pods.regulaforensics.com/Nightly/DocumentReaderNightly/9.11.7453/DocumentReaderNightly-9.11.7453.zip",
            checksum: "00524049c0e2f42420f317369f49cdb243dee0161b63b73fbbd912e09e1eb4a9"),
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
