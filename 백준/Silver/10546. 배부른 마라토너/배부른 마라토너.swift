func BOJ_10546() {
    let N = Int(readLine()!)!
    var a = [String: Int]()
    for _ in 0..<N {
        let b = readLine()!
        if a[b] == nil { a[b] = 1 }
        else { a[b]! += 1 }
    }
    for _ in 0..<N - 1 { a[readLine()!]! -= 1 }
    print(a.first { $0.value == 1 }!.key)
}
BOJ_10546()