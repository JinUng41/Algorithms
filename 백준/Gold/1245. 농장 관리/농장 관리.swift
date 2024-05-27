func BOJ_1245(_ N: Int, _ M: Int) {
    let dy = [1, 1, 0, -1, -1, -1, 0, 1], dx = [0, 1, 1, 1, 0, -1, -1, -1]
    var isVisit = Array(repeating: [Bool](repeating: false, count: M), count: N), graph = [[Int]]()
    for _ in 0..<N {
        graph.append(readLine()!.split(separator: " ").map { Int($0)! })
    }
    var isPeak = true
    func dfs(_ y: Int, _ x: Int) {
        isVisit[y][x] = true
        for i in 0..<8 {
            let newY = y+dy[i], newX = x+dx[i]
            if 0..<N ~= newY, 0..<M ~= newX {
                if graph[y][x] < graph[newY][newX] {
                    isPeak = false
                }
                if !isVisit[newY][newX], graph[y][x] == graph[newY][newX] {
                    dfs(newY, newX)
                }
            }
        }
    }
    var count = 0
    for y in 0..<N {
        for x in 0..<M {
            if !isVisit[y][x] {
                isPeak = true
                dfs(y, x)
                if isPeak { count += 1 }
            }
        }
    }
    print(count)
}
let NM = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_1245(NM[0], NM[1])