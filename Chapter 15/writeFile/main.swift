var filePath = "/home/hoffmanjon/Documents/test.file"
let outString = "Write this text to the file"
do {
    try outString.write(to: &filePath)
} catch let error  {
    print("Failed writing to path: \(error)")
}

