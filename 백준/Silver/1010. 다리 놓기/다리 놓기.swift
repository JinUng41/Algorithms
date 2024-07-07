func BOJ_1010() {
    var dp = Array(repeating: Array(repeating: 0, count: 30), count: 30)
    for i in 0...29 {
        for j in 0...i {
            if j == 0 || j == i { dp[i][j] = 1 }
            else { dp[i][j] = dp[i-1][j-1] + dp[i-1][j] }
        }
    }
    var result = ""
    for _ in 0..<Int(readLine()!)! {
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        result += "\(dp[NM[1]][NM[0]])\n"
    }
    print(result)
}
BOJ_1010()