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
        .package(name: "RegulaCommon", url: "https://github.com/regulaforensics/RegulaCommon-Swift-Package.git", .exact(Version(stringLiteral: "9.4.2239"))),
    ],
    targets: [
        .binaryTarget(name: "DocumentReader", url: "https://pods.regulaforensics.com/DocumentReader/9.4.6317/DocumentReader-9.4.6317.zip", checksum: "f71f651bec7c60c93ace97e5ff4aab71460f735da68b7719e4e7098d8c581861"),
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
