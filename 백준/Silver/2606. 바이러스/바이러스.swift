let n = Int(readLine()!)!
let m = Int(readLine()!)!

var count = 0
var isVisited = [Bool](repeating: false, count: n)
var computers = [[Int]](repeating: [], count: n)
for _ in 0..<m {
    let ab = readLine()!.split(separator: " ").map { Int($0)! - 1 }
    computers[ab[0]].append(ab[1])
    computers[ab[1]].append(ab[0])
}

func dfs(to node: Int) {
    count += 1
    for computer in computers[node] where !isVisited[computer] {
        isVisited[computer] = true
        dfs(to: computer)
    }
}

isVisited[0] = true
dfs(to: 0)
print(count - 1)