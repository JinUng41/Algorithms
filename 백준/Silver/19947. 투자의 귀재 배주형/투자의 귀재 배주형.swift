func BOJ_19947(_ input: [Int]) {
    let H = input[0], Y = input[1]
    var dp = Array(repeating: 0, count: Y + 1)
    dp[0] = H
    for i in 1...Y {
        dp[i] = max(dp[i], Int(Double(dp[i - 1]) * 1.05))
        if i >= 3 { dp[i] = max(dp[i], Int(Double(dp[i - 3]) * 1.2)) }
        if i >= 5 { dp[i] = max(dp[i], Int(Double(dp[i - 5]) * 1.35)) }
    }
    print(dp[Y])
}
BOJ_19947(readLine()!.split(separator: " ").map { Int($0)! })