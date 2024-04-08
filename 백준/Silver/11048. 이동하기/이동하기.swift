func BOJ_11048(_ N: Int, _ M: Int) {
    var rooms = [[Int]]()
    for _ in 0..<N { rooms.append(readLine()!.split(separator: " ").map { Int($0)! }) }
    var dp = Array(repeating: Array(repeating: 0, count: M + 1), count: N + 1)
    for y in 1...N {
        for x in 1...M {
            dp[y][x] = max(dp[y-1][x-1] ,dp[y-1][x], dp[y][x-1]) + rooms[y-1][x-1]
        }
    }
    print(dp[N][M])
}
let NM = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_11048(NM[0], NM[1])