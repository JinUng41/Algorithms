func solution(_ num: Int) -> Int {
    var n = num
    for count in 0..<500 {
        if n == 1 {
            return count
        }
        n = (n % 2 == 0) ? (n / 2) : (n * 3 + 1)
    }
    return n == 1 ? 500 : -1
}