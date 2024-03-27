func BOJ_1149(_ N: Int) {
    var dp = [[Int]]()
    for _ in 0..<N { dp.append(readLine()!.split(separator: " ").map { Int($0)! }) }
    for i in 1..<dp.count {
        dp[i][0] += min(dp[i-1][1], dp[i-1][2])
        dp[i][1] += min(dp[i-1][0], dp[i-1][2])
        dp[i][2] += min(dp[i-1][0], dp[i-1][1])
    }
    print(min(dp.last![0], min(dp.last![1], dp.last![2])))
}
BOJ_1149(Int(readLine()!)!)