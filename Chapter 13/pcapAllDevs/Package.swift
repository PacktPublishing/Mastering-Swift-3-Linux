import PackageDescription

let package = Package(
    name: "pcapAllDevs",
    dependencies: [.Package(url: "../Cpcap", majorVersion: 0, minor: 1)]
)
