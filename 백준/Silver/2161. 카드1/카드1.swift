struct Queue<T> {
    var isEmpty: Bool { input.isEmpty && output.isEmpty }
    var count: Int { input.count + output.count }
    private var input: [T]
    private var output = [T]()
    init(_ input: [T]) { self.input = input }
    mutating func enq(_ new: T) { input.append(new) }
    mutating func deq() -> T {
        if output.isEmpty {
            output = input.reversed()
            input = []
        }
        return output.removeLast()
    }
}
func BOJ_2161(_ N: Int) {
    var queue = Queue<Int>(Array(1...N))
    var result = ""
    while queue.count != 1 {
        result += "\(queue.deq()) "
        queue.enq(queue.deq())
    }
    result += "\(queue.deq())"
    print(result)
}
BOJ_2161(Int(readLine()!)!)