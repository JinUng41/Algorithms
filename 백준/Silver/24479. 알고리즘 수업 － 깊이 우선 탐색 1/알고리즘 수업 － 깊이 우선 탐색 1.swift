let nmr = readLine()!.split(separator: " ").map { Int($0)! }
let n = nmr[0], m = nmr[1], r = nmr[2]
var visitors = [Int](repeating: 0, count: n+1)
var graph = [[Int]](repeating: [], count: n+1)
var count = 1
func dfs(_ node: Int) {
    visitors[node] = count
    for n in graph[node].sorted() {
        if visitors[n] == 0 {
            count += 1
            dfs(n)
        }
    }
}
for _ in 0..<m {
    let uv = readLine()!.split(separator: " ").map { Int($0)! }
    let u = uv[0], v = uv[1]
    graph[u].append(v)
    graph[v].append(u)
}
dfs(r)
print(visitors[1...].map { String($0) }.joined(separator: "\n"))