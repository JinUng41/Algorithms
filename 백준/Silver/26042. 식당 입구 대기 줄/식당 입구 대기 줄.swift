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
    var maxQueueCount = 0, lastStudentMAtMax = 0
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ")
        
        if input[0] == "1" {
            let studentNumber = Int(input[1])!
            queue.enq(studentNumber)
            if queue.count > maxQueueCount {
                maxQueueCount = queue.count
                lastStudentMAtMax = studentNumber
            } else if queue.count == maxQueueCount {
                lastStudentMAtMax = min(lastStudentMAtMax, studentNumber)
            }
        } else if input[0] == "2" {
            _ = queue.deq()
        }
    }
    print(maxQueueCount, lastStudentMAtMax)
}
BOJ_3986(Int(readLine()!)!)