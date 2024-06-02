let nm = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_1987(nm[0], nm[1])
func BOJ_1987(_ n: Int, _ m: Int) {
    let dx = [0, 0, -1, 1], dy = [-1, 1, 0, 0]
    var isVisit = Array(repeating: Array(repeating: false, count: m), count: n)
    var graph = [[Int]]()
    for _ in 0..<n { graph.append( readLine()!.split(separator: " ").map { Int($0)! }) }
    func dfs(_ y: Int, _ x: Int) -> Int {
        var area = 0
        var stack = [(y, x)]
        isVisit[y][x] = true
        while !stack.isEmpty {
            let (y, x) = stack.removeLast()
            area += 1
            for i in 0..<4 {
                let newX = x+dx[i], newY = y+dy[i]
                if newY >= 0, newX >= 0, newY < n, newX < m, graph[newY][newX] == 1, !isVisit[newY][newX] {
                    isVisit[newY][newX] = true
                    stack.append((newY, newX))
                }
            }
        }
        return area
    }
    var count = 0, size = 0
    for y in 0..<n {
        for x in 0..<m {
            if graph[y][x] == 1, !isVisit[y][x] {
                count += 1
                size = max(size, dfs(y, x))
            }
        }
    }
    print("\(count)\n\(size)")
}