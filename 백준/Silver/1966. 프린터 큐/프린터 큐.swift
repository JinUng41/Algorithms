struct Queue<T> {
    private var input = [T]()
    private var output = [T]()
    
    var isEmpty: Bool {
        return input.isEmpty && output.isEmpty
    }
    
    mutating func enqueue(_ newElement: T) {
        input.append(newElement)
    }
    
    mutating func dequeue() -> T {
        if output.isEmpty {
            output = input.reversed()
            input.removeAll()
        }
        
        return output.removeLast()
    }
}

typealias Document = (idx: Int, level: Int)

func solution(_ testCase: Int) {
    for _ in 0..<testCase {
        let nm = readLine()!.split(separator: " ").map { Int($0)! }
        let (n, m) = (nm[0], nm[1])
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        
        var count = 0
        var q = Queue<Document>()
        var sort: [Int] = input.sorted(by: { $0 > $1 }).reversed()
        
        for i in 0..<n {
            let level = input[i]
            q.enqueue((i, level))
        }
        
        while true {
            if q.isEmpty { break }
            let maxLevel = sort.last!
            let document = q.dequeue()
            
            if document.level == maxLevel {
                count += 1
                sort.removeLast()
                if document.idx == m {
                    print(count)
                    break
                }
            } else {
                q.enqueue(document)
            }
        }
    }
}

solution(Int(readLine()!)!)