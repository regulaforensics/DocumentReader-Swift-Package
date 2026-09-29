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
            .exact("9.9.2885-rc")),
    ],
    targets: [
        .binaryTarget(
            name: "DocumentReader",
            url: "https://pods.regulaforensics.com/Stage/DocumentReaderStage/9.9.7066/DocumentReaderStage-9.9.7066.zip",
            checksum: "6340254eec0d5c362290457fe09cb86561ede70dfc13b5d35fac2c3996c9655d"),
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
