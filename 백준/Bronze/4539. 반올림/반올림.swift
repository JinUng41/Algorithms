func BOJ_4539(_ n: Int) {
    var result = ""
    for _ in 0..<n {
        var x = Int(readLine()!)!, divisor = 10
        while x >= divisor {
            let temp = x % divisor
            x = (x / divisor) * divisor
            if temp >= divisor / 2 { x += divisor }
            divisor *= 10
        }
        result += "\(x)\n"
    }
    print(result)
}
BOJ_4539(Int(readLine()!)!)