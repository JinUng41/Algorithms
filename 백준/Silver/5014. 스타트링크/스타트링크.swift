struct Queue<T> {
    private var input = [T]()
    private var output = [T]()
    var isEmpty: Bool { input.isEmpty && output.isEmpty }
    mutating func enq(_ new: T) { input.append(new) }
    mutating func deq() -> T {
        if output.isEmpty {
            output = input.reversed()
            input.removeAll()
        }
        return output.removeLast()
    }
}
func solution(_ fsgud: [Int]) -> String {
    let f = fsgud[0], s = fsgud[1], g = fsgud[2], u = fsgud[3], d = fsgud[4]
    var isVisited = Array(repeating: false, count: f + 1)
    var q = Queue<(Int, Int)>()
    q.enq((s, 0))
    
    while !q.isEmpty {
        let current = q.deq()
        let floor = current.0
        let count = current.1
        
        if floor == g { return "\(count)" }
        
        let up = floor + u
        if up <= f && !isVisited[up] {
            isVisited[up] = true
            q.enq((up, count + 1))
        }
        
        let down = floor - d
        if down >= 1 && !isVisited[down] {
            isVisited[down] = true
            q.enq((down, count + 1))
        }
    }
    return "use the stairs"
}
print(solution(readLine()!.split(separator: " ").map { Int($0)! }))