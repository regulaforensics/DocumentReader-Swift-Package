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
        .binaryTarget(name: "DocumentReaderBeta", url: "https://pods.regulaforensics.com/DocumentReaderBeta/8.5.5461/DocumentReaderBeta-8.5.5461.zip", checksum: "640055854d0a34ebc43708d3168c313ffecbf1548b1f2131da71c819e3f16737"),
    ]
)
