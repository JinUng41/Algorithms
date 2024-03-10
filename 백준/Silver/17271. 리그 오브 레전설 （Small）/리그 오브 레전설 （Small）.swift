func BOJ_17271() {
    let NM = readLine()!.split(separator: " ").map { Int($0)! }
    let N = NM[0], M = NM[1]
    
    var dp = Array(repeating: 0, count: N + 1)
    dp[0] = 1
    
    for i in 1...N {
        dp[i] = dp[i - 1]
        if i >= M { dp[i] = (dp[i] + dp[i - M]) % 1_000_000_007 }
    }
    print(dp[N])
}
BOJ_17271()