func solution() {
    let n = Int(readLine()!)!
    var map = [[Int]]()
    var isVisited = Array(repeating: Array(repeating: false, count: n), count: n)
    
    let dx = [0, 0, -1, 1]
    let dy = [-1, 1, 0, 0]
    
    for _ in 0..<n {
        map.append(readLine()!.map{ Int(String($0))! })
    }
    
    func check(_ x: Int, _ y: Int) -> Bool {
        return x >= 0 && x < n && y >= 0 && y < n && map[x][y] == 1 ? true : false
    }
    
    func dfs(_ x: Int, _ y: Int) -> Int {
        isVisited[x][y] = true
        var count = 1
        
        for i in 0..<4 {
            let newX = x + dx[i]
            let newY = y + dy[i]
            
            if check(newX, newY) && isVisited[newX][newY] == false {
                count += dfs(newX, newY)
            }
        }
        return count
    }
    
    var results = [Int]()
    for x in 0..<n {
        for y in 0..<n {
            if map[x][y] == 1 && isVisited[x][y] == false {
                results.append(dfs(x, y))
            }
        }
    }
    print(results.count)
    results.sorted().forEach { print($0) }
}
solution()