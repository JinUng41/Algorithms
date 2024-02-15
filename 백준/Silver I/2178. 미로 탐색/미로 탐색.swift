struct Queue<T> {
    private var input = [T]()
    private var output = [T]()
    
    var isEmpty: Bool {
        return input.isEmpty && output.isEmpty
    }
    
    mutating func enq(_ new: T) {
        input.append(new)
    }
    
    mutating func deq() -> T {
        if output.isEmpty {
            output = input.reversed()
            input.removeAll()
        }
        
        return output.removeLast()
    }
}

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])
let my = [-1, 1, 0, 0]
let mx = [0, 0, -1, 1]

var map = [[Int]]()
for _ in 0..<n {
    map.append(readLine()!.map{ Int(String($0))! })
}
var q = Queue<(y: Int, x: Int, count: Int)>()
q.enq((y: 0, x: 0, count: 1))
while !q.isEmpty {
    let info = q.deq()
    let (y, x, count) = info
    if map[y][x] == 0 {
        continue
    }
    if y == n - 1 && x == m - 1 {
        print(count)
        break
    }
    map[y][x] = 0
    
    for i in 0..<4 {
        let newY = y + my[i]
        let newX = x + mx[i]
        
        if (0..<n).contains(newY) && (0..<m).contains(newX) {
            if map[newY][newX] == 1{
                q.enq((y: newY, x: newX, count: count + 1))
            }
        }
    }
}