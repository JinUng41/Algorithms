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
func BOJ_3986(_ n: Int) {
    var queue = Queue<Int>()
    var maxCount = 0, lastStudent = 0
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ")
        if input[0] == "1" {
            let student = Int(input[1])!
            queue.enq(student)
            if queue.count > maxCount {
                maxCount = queue.count
                lastStudent = student
            } else if queue.count == maxCount {
                lastStudent = min(lastStudent, student)
            }
        } else {
            _ = queue.deq()
        }
    }
    print(maxCount, lastStudent)
}
BOJ_3986(Int(readLine()!)!)