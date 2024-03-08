func BOJ_20291() {
    let N = Int(readLine()!)!
    var files = [String: Int]()
    for _ in 0..<N {
        let input = readLine()!.split(separator: ".").map { String($0) }
        if files[input[1]] == nil { files[input[1]] = 1 }
        else { files[input[1]]! += 1 }
    }
    var z = ""
    for file in files.sorted(by: { $0.key < $1.key }) { z += "\(file.key) \(file.value)\n" }
    print(z)
}
BOJ_20291()