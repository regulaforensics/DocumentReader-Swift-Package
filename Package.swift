// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "DocumentReader",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "DocumentReader",
            targets: ["DocumentReader"]),
    ],
    targets: [
        .binaryTarget(name: "DocumentReader", url: "https://pods.regulaforensics.com/DocumentReader/6.9.3102/DocumentReader-6.9.3102.zip", checksum: "3342be204afbd36bfa5d6991ffb88ad3df4fc733a7ac34a28c46a824100461e6"),
    ]
)
