struct Queue<T> {
    private var input: [T]
    private var output = [T]()
    
    var isEmpty: Bool { input.isEmpty && output.isEmpty }
    
    init(_ input: [T] = []) { self.input = input }
    
    mutating func enqueue(_ new: T) { input.append(new) }
    
    mutating func dequeue() -> T {
        if output.isEmpty {
            output = input.reversed()
            input = []
        }
        return output.removeLast()
    }
}
typealias Point = (x: Int, y: Int)
func solution() {
    let dx = [1, 0, -1, 0], dy = [0, 1, 0, -1]
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let M = input[0], N = input[1], K = input[2]
    
    var graph = [[Int]](repeating: [Int](repeating: 0, count: M), count: N)
    for _ in 0..<K {
        let XY = readLine()!.split(separator: " ").map { Int($0)! }
        let X = XY[0], Y = XY[1]
        graph[Y][X] = 1
    }
    
    var isVisit = [[Bool]](repeating: [Bool](repeating: false, count: M), count: N)
    
    func check(_ point: Point) -> Bool { return 0..<N ~= point.y && 0..<M ~= point.x }
    
    func bfs(_ point: Point) {
        var q = Queue<Point>()
        q.enqueue(point)
        
        isVisit[point.y][point.x] = true
        
        while !q.isEmpty {
            let point = q.dequeue()
            
            for i in 0..<4 {
                let newY = point.y + dy[i], newX = point.x + dx[i]
                
                if check((newX, newY)), !isVisit[newY][newX], graph[newY][newX] == 1 {
                    isVisit[newY][newX] = true
                    q.enqueue((newX, newY))
                }
            }
        }
    }
    var count = 0
    for y in 0..<N {
        for x in 0..<M {
            if !isVisit[y][x], graph[y][x] == 1 {
                count += 1
                bfs((x, y))
            }
        }
    }
    print(count)
}
func BOJ_1012() {
    let T = Int(readLine()!)!
    for _ in 0..<T { solution() }
}
BOJ_1012()