// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "DocScanneriOS",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "DocScanneriOS",
            targets: ["DocScanneriOS"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "docscanner_ios",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/DocScannerIOS/docscanner_ios.xcframework.zip",
            checksum: "037c420a32ec72cc8d1eaee4fafdfd5ec056e4b8b42d35ffb6f022df6b3bc428"
        ),
        .target(
            name: "DocScanneriOS",
            dependencies: ["docscanner_ios"],
            path: "Sources"
        )
    ]
)
