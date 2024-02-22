struct Queue<T> {
    private var input = [T]()
    private var output = [T]()
    var isEmpty: Bool { return input.isEmpty && output.isEmpty }
    mutating func enq(_ new: T) { input.append(new) }
    mutating func deq() -> T {
        if output.isEmpty {
            output = input.reversed()
            input.removeAll()
        }
        return output.removeLast()
    }
}
let nmr = readLine()!.split(separator: " ").map { Int($0)! }
let n = nmr[0], m = nmr[1], r = nmr[2]
var visitors = [Int](repeating: 0, count: n+1)
var graph = [[Int]](repeating: [], count: n+1)
func bfs(_ node: Int) {
    var isVisit = [Bool](repeating: false, count: n+1)
    var count = 1
    isVisit[node] = true
    visitors[node] = count
    var q = Queue<Int>()
    q.enq(node)
    while !q.isEmpty {
        let node = q.deq()
        for n in graph[node].sorted() where !isVisit[n] {
            isVisit[n] = true
            count += 1
            visitors[n] = count
            q.enq(n)
        }
    }
}
for _ in 0..<m {
    let uv = readLine()!.split(separator: " ").map { Int($0)! }
    let u = uv[0], v = uv[1]
    graph[u].append(v)
    graph[v].append(u)
}
bfs(r)
print(visitors[1...].map { "\($0)" }.joined(separator: "\n"))