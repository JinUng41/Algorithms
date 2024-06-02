let nm = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_1926(nm[0], nm[1])
func BOJ_1926(_ n: Int, _ m: Int) {
    let dx = [0, 0, -1, 1], dy = [-1, 1, 0, 0]
    var isVisit = Array(repeating: Array(repeating: false, count: m), count: n)
    var graph = [[Int]]()
    for _ in 0..<n { graph.append( readLine()!.split(separator: " ").map { Int($0)! }) }
    var count = 0, maxArea = 0, area = 0
    func dfs(_ y: Int, _ x: Int) {
        isVisit[y][x] = true
        area += 1
        for i in 0..<4 {
            let newX = x+dx[i], newY = y+dy[i]
            guard newY >= 0, newX >= 0, newY < n, newX < m,
                  graph[newY][newX] == 1, !isVisit[newY][newX]
            else { continue }
            isVisit[newY][newX] = true
            dfs(newY, newX)
        }
    }
    for y in 0..<n {
        for x in 0..<m {
            if graph[y][x] == 1, !isVisit[y][x] {
                area = 0
                count += 1
                dfs(y, x)
                maxArea = max(maxArea, area)
            }
        }
    }
    print("\(count)\n\(maxArea)")
}