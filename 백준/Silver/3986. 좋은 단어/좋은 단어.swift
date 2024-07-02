func BOJ_3986(_ N: Int) {
    var count = 0
    for _ in 0..<N {
        var stack = [Character]()
        let word = Array(readLine()!)
        for char in word {
            if let last = stack.last, last == char {
                _ = stack.popLast()
            } else {
                stack.append(char)
            }
        }
        if stack.isEmpty { count += 1 }
    }
    print(count)
}
BOJ_3986(Int(readLine()!)!)