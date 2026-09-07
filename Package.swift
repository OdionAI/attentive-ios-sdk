// swift-tools-version: 6.1
import PackageDescription
let package = Package(
    name: "AttentiveVoice",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "AttentiveVoice", targets: ["AttentiveVoice", "LiveKitWebRTC", "RustLiveKitUniFFI"]),
        .library(name: "AttentiveVoiceUI", targets: ["AttentiveVoiceUI", "AttentiveVoice", "LiveKitWebRTC", "RustLiveKitUniFFI"])
    ],
    targets: [
        .binaryTarget(name: "AttentiveVoice", path: "Frameworks/AttentiveVoice.xcframework"),
        .binaryTarget(name: "AttentiveVoiceUI", path: "Frameworks/AttentiveVoiceUI.xcframework"),
        .binaryTarget(name: "LiveKitWebRTC", path: "Frameworks/LiveKitWebRTC.xcframework"),
        .binaryTarget(name: "RustLiveKitUniFFI", path: "Frameworks/RustLiveKitUniFFI.xcframework")
    ]
)
