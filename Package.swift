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
            .exact("9.10.3036-nightly")),
    ],
    targets: [
        .binaryTarget(
            name: "DocumentReader",
            url: "https://pods.regulaforensics.com/Nightly/DocumentReaderNightly/9.10.7365/DocumentReaderNightly-9.10.7365.zip",
            checksum: "8f228fbe403d2c0d0e7a78b453da51b337d3082642f6adaccaeabb797c3d71f2"),
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
