func BOJ_17212(_ N: Int) {
    if N == 0 {
        print(0)
        return
    }
    let coins = [1, 2, 5, 7]
    var dp = Array(repeating: 100_001, count: N + 1)
    dp[0] = 0
    for i in 1...N {
        for coin in coins {
            if i - coin >= 0 {
                dp[i] = min(dp[i], dp[i - coin] + 1)
            }
        }
    }
    print(dp[N])
}
BOJ_17212(Int(readLine()!)!)