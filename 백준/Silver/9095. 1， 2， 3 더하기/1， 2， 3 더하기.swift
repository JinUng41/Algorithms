func BOJ_9095(_ T: Int) {
    var numbers = [Int]()
    for _ in 0..<T { numbers.append(Int(readLine()!)!) }
    var dp = Array(repeating: 0, count: 11)
    dp[1] = 1
    dp[2] = 2
    dp[3] = 4
    for i in 4...10 { dp[i] = dp[i-1] + dp[i-2] + dp[i-3] }
    numbers.forEach { print(dp[$0]) }
}
BOJ_9095(Int(readLine()!)!)