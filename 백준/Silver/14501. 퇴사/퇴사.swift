func BOJ_14501(_ N: Int) {
    var dp = Array(repeating: 0, count: N+2)
    for i in 1...N {
        let tp = readLine()!.split(separator: " ").map { Int($0)! }
        let t = tp[0], p = tp[1]
        
        if dp[i] > dp[i+1] { dp[i+1] = dp[i] }
        if i+tp[0] > N+1 { continue }
        dp[i+t] = max(p + dp[i], dp[i+t])
    }
    print(dp[N+1])
}
BOJ_14501(Int(readLine()!)!)