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

struct Info {
    let x, y, c : Int
}

let dx = [1, 2, 2, 1, -1, -2, -2, -1]
let dy = [-2, -1, 1, 2, 2, 1, -1, -2]

let t = Int(readLine()!)!
for _ in 0..<t {
    solution()
}

func solution() {
    func check(_ x: Int, _ y: Int) -> Bool {
        return x >= 0 && x < length && y >= 0 && y < length
    }
    
    let length = Int(readLine()!)!
    var arr = Array(repeating: Array(repeating: false, count: length), count: length)
    let start = readLine()!.split(separator: " ").map { Int($0)! }
    let end = readLine()!.split(separator: " ").map { Int($0)! }
    
    var q = Queue<Info>()
    q.enqueue(Info(x: start[0], y: start[1], c: 0))
    arr[start[0]][start[1]] = true
    
    while !q.isEmpty {
        let now = q.dequeue()
        if now.x == end[0] && now.y == end[1] {
            print(now.c)
            break
        }
        
        for i in 0..<8 {
            let newX = now.x + dx[i]
            let newY = now.y + dy[i]
            
            if check(newX, newY) && !arr[newX][newY] {
                q.enqueue(Info(x: newX, y: newY, c: now.c + 1))
                arr[newX][newY] = true
            }
        }
    }
}