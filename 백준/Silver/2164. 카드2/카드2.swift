struct Queue<T> {
    private var input = [T]()
    private var output = [T]()
    
    var size: Int { input.count + output.count }
    var isEmpty: Bool { input.isEmpty && output.isEmpty }
    var front: T {
        if output.isEmpty {
            return input.first!
        }
        return output.last!
    }
    
    var back: T {
        if input.isEmpty {
            return output.first!
        }
        return input.last!
    }
    
    mutating func enqueue(_ newElement: T) {
        input.append(newElement)
    }
    
    mutating func dequeue() -> T {
        if output.isEmpty {
            output = input.reversed()
            input = [T]()
        }
        return output.removeLast()
    }
}
var q = Queue<Int>()
let n = Int(readLine()!)!
for i in 1...n {
    q.enqueue(i)
}

while q.size != 1 {
    let _ = q.dequeue()
    q.enqueue(q.dequeue())
}
print(q.front)
