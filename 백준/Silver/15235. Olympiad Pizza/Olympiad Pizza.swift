import Foundation

struct Queue<T> {
    private var input = [T](), output = [T]()
    
    var isEmpty: Bool {
        return input.isEmpty && output.isEmpty
    }
    
    mutating func enqueue(_ element: T) {
        input.append(element)
    }
    
    mutating func dequeue() -> T {
        if output.isEmpty {
            output = input.reversed()
            input.removeAll()
        }
        return output.removeLast()
    }
}

let n = Int(readLine()!)!
let orders = readLine()!.split(separator: " ").map { Int($0)! }

var queue = Queue<(index: Int, slices: Int)>()
var times = [Int](repeating: 0, count: n)

for (index, slices) in orders.enumerated() {
    queue.enqueue((index, slices))
}

var time = 0
while !queue.isEmpty {
    time += 1
    
    var current = queue.dequeue()
    current.slices -= 1
    
    if current.slices == 0 {
        times[current.index] = time
    } else {
        queue.enqueue(current)
    }
}
print(times.map { String($0) }.joined(separator: " "))