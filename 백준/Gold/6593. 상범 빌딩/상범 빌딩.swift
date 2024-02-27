struct Queue<T> {
    private var input = [T]()
    private var output = [T]()
    var isEmpty: Bool { return input.isEmpty && output.isEmpty }
    mutating func enq(_ new: T) { input.append(new) }
    mutating func deq() -> T {
        if output.isEmpty {
            output = input.reversed()
            input.removeAll()
        }
        return output.removeLast()
    }
}
struct Point: Hashable {
    let l: Int
    let r: Int
    let c: Int
}
func bfs(_ building: [[[Character]]], _ start: Point, _ end: Point) -> Int {
    let directions = [ (0, 0, 1), (0, 0, -1), (0, 1, 0), (0, -1, 0), (1, 0, 0), (-1, 0, 0) ]
    var q = Queue<(Point, Int)>()
    var visit = Set<Point>()
    
    q.enq((start, 0))
    visit.insert(start)
    
    while !q.isEmpty {
        let (current, minutes) = q.deq()
        
        if current == end { return minutes }
        
        for direction in directions {
            let newL = current.l + direction.0
            let newR = current.r + direction.1
            let newC = current.c + direction.2
            
            let next = Point(l: newL, r: newR, c: newC)
            
            if newL >= 0, newR >= 0, newC >= 0,
               newL < building.count, newR < building[0].count, newC < building[0][0].count,
               building[newL][newR][newC] != "#", !visit.contains(next)
            {
                q.enq((next, minutes + 1))
                visit.insert(next)
            }
        }
    }
    
    return -1
}
func BOJ_6593() {
    while let input = readLine(), input != "0 0 0" {
        let LRC = input.split(separator: " ").map { Int($0)! }
        let L = LRC[0], R = LRC[1], C = LRC[2]
        
        var building = [[[Character]]]()
        var start = Point(l: 0, r: 0, c: 0)
        var end = Point(l: 0, r: 0, c: 0)
        
        for _ in 0..<L {
            var floor = [[Character]]()
            for _ in 0..<R { floor.append(Array(readLine()!)) }
            building.append(floor)
            _ = readLine()
        }
        
        for l in 0..<L {
            for r in 0..<R {
                for c in 0..<C {
                    let current = building[l][r][c]
                    if current == "S" { start = Point(l: l, r: r, c: c) }
                    if current == "E" { end = Point(l: l, r: r, c: c); break }
                }
            }
        }
        
        let result = bfs(building, start, end)
        print(result == -1 ? "Trapped!" : "Escaped in \(result) minute(s).")
    }
}
BOJ_6593()