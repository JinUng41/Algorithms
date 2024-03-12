func BOJ_16499() {
    let N = Int(readLine()!)!
    var set = Set<String>()
    for _ in 0..<N {
        let input = readLine()!.sorted().map { String($0) }.joined()
        set.insert(input)
    }
    print(set.count)
}
BOJ_16499()