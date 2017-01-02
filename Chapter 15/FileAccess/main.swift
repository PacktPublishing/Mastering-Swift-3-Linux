import Glibc
import Foundation

let fileManager = FileManager.default

do {
    let path = "/home/hoffmanjon"
    let dirContents = try fileManager.contentsOfDirectory(atPath: path)
    for item in dirContents {
        print(item);
    }
} catch let error {
    print("Failed reading contents of dir: \(error)")
}

do {
    let path = "/home/hoffmanjon/masteringswift/test/dir"
    try fileManager.createDirectory(atPath: path, withIntermediateDirectories: true)
} catch let error {
    print("Failed creating dir, Error: \(error)")
}

do {
    let pathOrig = "/home/hoffmanjon/masteringswift/"
    let pathNew = "/home/hoffmanjon/masteringswift3/"
print("Moving")
    try fileManager.moveItem(atPath: pathOrig, toPath: pathNew)
} catch let error {
    print("Failed moving dir, Error: \(error)")
}

print("access")
let path = "/home/hoffmanjon/masteringswift3/test"
if fileManager.fileExists(atPath: path) {
    let isReadable = fileManager.isReadableFile(atPath: path)
    let isWriteable = fileManager.isWritableFile(atPath: path)
    let isExecutable = fileManager.isExecutableFile(atPath: path)
    print("can read \(isReadable)")
    print("can write \(isWriteable)")
    print("can execute \(isExecutable)")
}

do {
    let path = "/home/hoffmanjon/masteringswift3/"
print("removing")
    try fileManager.removeItem(atPath: path)
} catch let error {
    print("Failed creating dir, Error: \(error)")
}
