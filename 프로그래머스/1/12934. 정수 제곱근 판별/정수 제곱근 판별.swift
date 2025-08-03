func solution(_ n:Int64) -> Int64 {
    var x = 1
    while x * x <= n {
        x += 1
    }
    if (x - 1) * (x - 1) == n {
        return Int64(x * x)
    }
    return -1
}