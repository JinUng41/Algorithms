func BOJ_10026(_ N: Int) {
    let dx = [0, 0, 1, -1], dy = [1, -1, 0, 0]
    var isVisit = Array(repeating: Array(repeating: false, count: N), count: N)
    var map = [[Character]]()
    for _ in 0..<N { map.append(readLine()!.map { $0 }) }
    func check(_ x: Int, _ y: Int, _ color: Character) -> Bool {
        return x >= 0 && y >= 0 && x < N && y < N && map[y][x] == color
    }
    func dfs(_ x: Int, _ y: Int, _ color: Character) {
        isVisit[y][x] = true
        for i in 0..<4 {
            let newX = x + dx[i], newY = y + dy[i]
            if check(newX, newY, color), !isVisit[newY][newX] { dfs(newX, newY, color) }
        }
    }
    var normal = 0
    for y in 0..<N {
        for x in 0..<N {
            if !isVisit[y][x] {
                dfs(x, y, map[y][x])
                normal += 1
            }
        }
    }
    for y in 0..<N {
        for x in 0..<N {
            if map[y][x] == "R" { map[y][x] = "G" }
        }
    }
    isVisit = Array(repeating: Array(repeating: false, count: N), count: N)
    var abnormal = 0
    for y in 0..<N {
        for x in 0..<N {
            if !isVisit[y][x] {
                dfs(x, y, map[y][x])
                abnormal += 1
            }
        }
    }
    print("\(normal) \(abnormal)")
}
BOJ_10026(Int(readLine()!)!)