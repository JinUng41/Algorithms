struct Queue<T> {
    private var input = [T]()
    private var output = [T]()
    var count: Int { return input.count + output.count }
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
typealias Info = (String, Int)
func BOJ_29813() {
    let n = Int(readLine()!)!
    var q = Queue<Info>()
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map { String($0) }
        q.enq((input[0], Int(input[1])!))
    }
    while q.count > 1 {
        let a = q.deq()
        for _ in 0..<a.1 - 1 { q.enq(q.deq()) }
        let _ = q.deq()
    }
    print(q.deq().0)
}
BOJ_29813()