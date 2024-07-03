struct Queue<T> {
    var isEmpty: Bool { input.isEmpty && output.isEmpty }
    var count: Int { input.count + output.count }
    private var input = [T](), output = [T]()
    mutating func enq(_ new: T) { input.append(new) }
    mutating func deq() -> T {
        if output.isEmpty {
            output = input.reversed()
            input = []
        }
        return output.removeLast()
    }
}
func BOJ_26042(_ n: Int) {
    var queue = Queue<Int>()
    var count = 0, temp = 0
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ")
        if input[0] == "1" {
            let student = Int(input[1])!
            queue.enq(student)
            if queue.count > count {
                count = queue.count
                temp = student
            } else if queue.count == count {
                temp = min(temp, student)
            }
        } else {
            _ = queue.deq()
        }
    }
    print(count, temp)
}
BOJ_26042(Int(readLine()!)!)