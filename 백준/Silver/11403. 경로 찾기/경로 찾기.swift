func BOJ_11403(_ N: Int) {
    var graph = [[Int]]()
    for _ in 0..<N { graph.append(readLine()!.split(separator: " ").map { Int($0)! }) }
    for i in 0..<N {
        for j in 0..<N {
            for k in 0..<N {
                if graph[j][i] == 1, graph[i][k] == 1 {
                    graph[j][k] = 1
                }
            }
        }
    }
    var result = ""
    for line in graph {
        result += line.map { String($0) }.joined(separator: " ")
        result += "\n"
    }
    print(result)
}
BOJ_11403(Int(readLine()!)!)