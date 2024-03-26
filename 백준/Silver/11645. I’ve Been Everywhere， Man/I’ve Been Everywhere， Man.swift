func BOJ_11645(_ N: Int) {
    var words = Set<String>()
    for _ in 0..<N { words.insert(readLine()!) }
    print(words.count)
}
for _ in 0..<Int(readLine()!)! { BOJ_11645(Int(readLine()!)!) }