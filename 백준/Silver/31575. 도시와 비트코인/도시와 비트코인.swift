func BOJ_31575(_ N: Int, _ M: Int) {
    let dx = [0, 1], dy = [1, 0]
    var map = [[Int]]()
    var isVisit = Array(repeating: Array(repeating: false, count: N), count: M)
    for _ in 0..<M { map.append(readLine()!.split(separator: " ").map { Int($0)! }) }
    func check(_ x: Int, _ y: Int) -> Bool { return x >= 0 && x < N && y >= 0 && y < M && map[y][x] == 1 }
    func dfs(_ x: Int, _ y: Int) {
        isVisit[y][x] = true
        for i in 0..<2 {
            let newX = x + dx[i], newY = y + dy[i]
            if check(newX, newY), !isVisit[newY][newX] { dfs(newX, newY) }
        }
    }
    dfs(0, 0)
    print(isVisit[M - 1][N - 1] ? "Yes" : "No")
}
let NM = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_31575(NM[0], NM[1])