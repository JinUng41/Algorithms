import Foundation

let n = Int(readLine()!)!

var queue: [Int] = []
var head = 0
var output: [String] = []

let handlers: [String: ([String]) -> Void] = [
    "push": { args in
        queue.append(Int(args[0])!)
    },
    "pop": { _ in
        if head < queue.count {
            output.append(String(queue[head]))
            head += 1
        } else {
            output.append("-1")
        }
    },
    "size": { _ in
        output.append(String(queue.count - head))
    },
    "empty": { _ in
        output.append(head < queue.count ? "0" : "1")
    },
    "front": { _ in
        output.append(head < queue.count ? String(queue[head]) : "-1")
    },
    "back": { _ in
        output.append(head < queue.count ? String(queue[queue.count - 1]) : "-1")
    }
]

for _ in 0..<n {
    let parts = readLine()!.split(separator: " ").map(String.init)
    let op = parts[0]
    let args = Array(parts.dropFirst())
    handlers[op]?(args)
}

print(output.joined(separator: "\n"))