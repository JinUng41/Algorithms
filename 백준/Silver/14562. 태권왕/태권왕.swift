struct Queue<T> {
    private var input = [T]()
    private var output = [T]()
    var isEmpty: Bool { input.isEmpty && output.isEmpty }
    mutating func enq(_ new: T) { input.append(new) }
    mutating func deq() -> T {
        if output.isEmpty {
            output = input.reversed()
            input = []
        }
        return output.removeLast()
    }
}
func bfs(_ s: Int, _ t: Int) -> Int {
    var q = Queue<(Int, Int, Int)>()
    q.enq((s, t, 0))
    while !q.isEmpty {
        let (s, t, c) = q.deq()
        if s == t { return c }
        if s * 2 <= t + 3 { q.enq((s * 2, t + 3, c + 1)) }
        if s + 1 <= t { q.enq((s + 1, t, c + 1)) }
    }
    return -1
}
func BOJ_14562() {
    var z = ""
    for _ in 0..<Int(readLine()!)! {
        let ST = readLine()!.split(separator: " ").map { Int($0)! }
        z += "\(bfs(ST[0], ST[1]))\n"
    }
    print(z)
}
BOJ_14562()