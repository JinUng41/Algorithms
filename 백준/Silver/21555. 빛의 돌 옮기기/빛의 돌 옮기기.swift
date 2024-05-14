func BOJ_21555(_ N: Int, _ K: Int) {
    let a = readLine()!.split(separator: " ").map { Int($0)! }
    let b = readLine()!.split(separator: " ").map { Int($0)! }
    var dp = [[Int]](repeating: [0, 0], count: N)
    dp[0] = [a[0], b[0]]
    for i in 1..<N {
        dp[i][0] = min(dp[i-1][0], dp[i-1][1]+K)+a[i]
        dp[i][1] = min(dp[i-1][0]+K, dp[i-1][1])+b[i]
    }
    print(dp[N-1].min()!)
}
let NK = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_21555(NK[0], NK[1])