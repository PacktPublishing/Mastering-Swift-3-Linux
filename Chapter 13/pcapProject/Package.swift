import PackageDescription

let package = Package(
    name: "pcapProject",
    dependencies: [.Package(url: "../Cpcap", majorVersion: 0, minor: 1)]
)
