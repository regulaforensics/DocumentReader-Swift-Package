// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "DocumentReader",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "DocumentReader",
            targets: ["DocumentReaderStage"]),
    ],
    targets: [
        .binaryTarget(name: "DocumentReaderStage", url: "https://pods.regulaforensics.com/Stage/DocumentReaderStage/9.7.6684/DocumentReaderStage-9.7.6684.zip", checksum: "0850c689b28fc8eeecfdf7439204d20164f7bad22e9c66c2eeba7ea3f8740ce9"),
    ]
)
