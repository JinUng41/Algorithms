func BOJ_20291() {
    let N = Int(readLine()!)!
    var extensions = [String: Int]()
    for _ in 0..<N {
        let input = readLine()!.split(separator: ".").map { String($0) }
        if extensions[input[1]] == nil { extensions[input[1]] = 1 }
        else { extensions[input[1]]! += 1 }
    }
    let temp = extensions.sorted { $0.key < $1.key }
    var z = ""
    for file in temp { z += "\(file.key) \(file.value)\n" }
    print(z)
}
BOJ_20291()