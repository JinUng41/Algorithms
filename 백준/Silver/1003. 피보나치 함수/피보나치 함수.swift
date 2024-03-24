func BOJ_1003(_ T: Int) {
    var numbers = [Int]()
    for _ in 0..<T { numbers.append(Int(readLine()!)!) }
    var dp = Array(repeating: (0, 0), count: 41)
    dp[0] = (1, 0)
    dp[1] = (0, 1)
    for i in 2...40 { dp[i] = (dp[i-1].1, dp[i-1].1 + dp[i-2].1) }
    var z = ""
    numbers.forEach { z += "\(dp[$0].0) \(dp[$0].1)\n" }
    print(z)
}
BOJ_1003(Int(readLine()!)!)