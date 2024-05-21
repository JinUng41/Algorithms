func BOJ_3067(_ N: Int) {
    let coins = readLine()!.split(separator: " ").map { Int($0)! }
    let m = Int(readLine()!)!
    var dp = Array(repeating: 0, count: m+1)
    dp[0] = 1
    for coin in coins {
        if coin > m { continue }
        for won in coin...m {
            dp[won] += dp[won-coin]
        }
    }
    print(dp[m])
}
for _ in 0..<Int(readLine()!)! { BOJ_3067(Int(readLine()!)!) }