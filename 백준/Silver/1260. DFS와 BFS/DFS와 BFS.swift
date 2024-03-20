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
func BOJ_1260() {
    let NMV = readLine()!.split(separator: " ").map { Int($0)! }
    let N = NMV[0], M = NMV[1], V = NMV[2]
    
    var graph = [[Int]](repeating: [], count: N + 1)
    var z = ""
    for _ in 0..<M {
        let ab = readLine()!.split(separator: " ").map { Int($0)! }
        let a = ab[0], b = ab[1]
        graph[a].append(b)
        graph[b].append(a)
    }
    
    var dfsVisit = [Int]()
    func dfs(_ node: Int) {
        dfsVisit.append(node)
        for n in graph[node].sorted() {
            if !dfsVisit.contains(where: { $0 == n }) { dfs(n) }
        }
    }
    dfs(V)
    z += dfsVisit.map { String($0) }.joined(separator: " ")
    z += "\n"
    
    var bfsVisit = [Int]()
    func bfs(_ node: Int) {
        bfsVisit.append(node)
        var q = Queue<Int>()
        q.enq(node)
        while !q.isEmpty {
            let last = q.deq()
            for n in graph[last].sorted() {
                if !bfsVisit.contains(where: { $0 == n }) {
                    bfsVisit.append(n)
                    q.enq(n)
                }
            }
        }
    }
    bfs(V)
    z += bfsVisit.map { String($0) }.joined(separator: " ")
    print(z)
}
BOJ_1260()