let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])

var isVisited = [Bool](repeating: false, count: n)
var arr = [[Int]](repeating: [], count: n)

func dfs(to node: Int) {
    for n in arr[node] where !isVisited[n] {
        isVisited[n] = true
        dfs(to: n)
    }
}

for _ in 0..<m {
    let uv = readLine()!.split(separator: " ").map { Int($0)! - 1}
    let (u, v) = (uv[0], uv[1])
    arr[u].append(v)
    arr[v].append(u)
}

var count = 0
for i in 0..<n {
    if !isVisited[i]{
        count += 1
        dfs(to: i)
    }
}
print(count)