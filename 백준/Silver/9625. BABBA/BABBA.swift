func BOJ_9625() {
    let K = Int(readLine()!)!
    var a = 1, b = 0
    for _ in 1...K {
        let c = b
        b += a
        a = c
    }
    print("\(a) \(b)")
}
BOJ_9625()