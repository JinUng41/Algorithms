struct Queue<T> {
    private var input = [T](), output = [T]()
    var isEmpty: Bool { input.isEmpty && output.isEmpty }
    mutating func enq(_ new: T) { input.append(new) }
    mutating func deq() -> T {
        if output.isEmpty {
            output = input.reversed()
            input = []
        }
        return output.removeLast()
    }
}
func BOJ_14930(_ n: Int, _ m: Int) {
    var map = [[Int]](), new = Array(repeating: Array(repeating: -1, count: m), count: n)
    var isVisit = Array(repeating: Array(repeating: false, count: m), count: n)
    var target = (0, 0)
    for i in 0..<n {
        let line = readLine()!.split(separator: " ").map { Int($0)! }
        map.append(line)
        for j in 0..<m {
            if line[j] == 2 {
                target = (i, j)
                break
            }
        }
    }
    var q = Queue<(Int, Int, Int)>()
    q.enq((target.0, target.1, 0))
    new[target.0][target.1] = 0
    isVisit[target.0][target.1] = true
    
    let directions = [(0, 1), (0, -1), (1, 0), (-1, 0)]
    while !q.isEmpty {
        let now = q.deq()
        for direction in directions {
            let newX = now.0 + direction.0, newY = now.1 + direction.1
            if newX >= 0, newY >= 0, newX < n, newY < m, map[newX][newY] == 1, new[newX][newY] == -1 {
                q.enq((newX, newY, now.2 + 1))
                new[newX][newY] = now.2 + 1
                isVisit[newX][newY] = true
            }
        }
    }
    var result = ""
    for i in 0..<n {
        for j in 0..<m { result += map[i][j] == 0 ? "0 " : "\(new[i][j]) " }
        result += "\n"
    }
    print(result)
}
let nm = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_14930(nm[0], nm[1])