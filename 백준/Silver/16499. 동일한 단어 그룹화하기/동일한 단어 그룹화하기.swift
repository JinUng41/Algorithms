func BOJ_16499() {
    let N = Int(readLine()!)!
    var a = Set<String>()
    for _ in 0..<N { a.insert(readLine()!.sorted().map { String($0) }.joined()) }
    print(a.count)
}
BOJ_16499()