// swift-tools-version: 6.1
import PackageDescription
let package = Package(
    name: "AttentiveVoice",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "AttentiveVoice", targets: ["AttentiveVoice", "AttentiveMedia", "AttentiveBindings"]),
        .library(name: "AttentiveVoiceUI", targets: ["AttentiveVoiceUI", "AttentiveVoice", "AttentiveMedia", "AttentiveBindings"])
    ],
    targets: [
        .binaryTarget(name: "AttentiveVoice", path: "Frameworks/AttentiveVoice.xcframework"),
        .binaryTarget(name: "AttentiveVoiceUI", path: "Frameworks/AttentiveVoiceUI.xcframework"),
        .binaryTarget(name: "AttentiveMedia", path: "Frameworks/AttentiveMedia.xcframework"),
        .binaryTarget(name: "AttentiveBindings", path: "Frameworks/AttentiveBindings.xcframework")
    ]
)
