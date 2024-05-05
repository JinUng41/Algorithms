func BOJ_25372(_ N: Int) {
    var result = ""
    for _ in 0..<N { result += (6...9).contains(readLine()!.count) ? "yes\n" : "no\n" }
    print(result)
}
BOJ_25372(Int(readLine()!)!)