// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "DocumentReader",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "DocumentReader",
            targets: ["DocumentReaderBeta"]),
    ],
    targets: [
        .binaryTarget(name: "DocumentReaderBeta", url: "https://pods.regulaforensics.com/DocumentReaderBeta/7.3/DocumentReaderBeta-7.3.zip", checksum: "f98706f10ac139630cc5f27285955a6eabf0fc736658c8a62098eb0b33e358e9"),
    ]
)
