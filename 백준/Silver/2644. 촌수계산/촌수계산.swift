func BOJ_2644(_ N: Int) {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let start = input[0], end = input[1]
    var graph = Array(repeating: Array(repeating: 0, count: 0), count: N + 1)
    for _ in 0..<Int(readLine()!)! {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let x = input[0], y = input[1]
        graph[x].append(y)
        graph[y].append(x)
    }
    var isVisit = Array(repeating: false, count: N + 1)
    var result = -1
    func dfs(_ node: Int, count: Int) {
        isVisit[node] = true
        if node == end {
            result = count
            return
        }
        for next in graph[node] {
            if !isVisit[next] {
                isVisit[next] = true
                dfs(next, count: count+1)
            }
        }
    }
    dfs(start, count: 0)
    print(result)
}
BOJ_2644(Int(readLine()!)!)