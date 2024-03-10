func BOJ_20920() {
    let NM = readLine()!.split(separator: " ").map { Int($0)! }
    let N = NM[0], M = NM[1]
    var words = [String: Int]()
    for _ in 0..<N {
        let word = readLine()!
        guard word.count >= M else { continue }
        if words[word] == nil { words[word] = 1 }
        else { words[word]! += 1 }
    }
    let temp = words.sorted {
        if $0.value == $1.value {
            if $0.key.count == $1.key.count { return $0.key < $1.key }
            return $0.key.count > $1.key.count
        }
        return $0.value > $1.value
    }
    var z = ""
    for word in temp { z += "\(word.key)\n" }
    print(z)
}
BOJ_20920()