func solution() {
    var gears = [[Int]]()
    
    for _ in 0..<4 {
        gears.append(readLine()!.map { Int("\($0)")! })
    }
    
    for _ in 0..<Int(readLine()!)! {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let n = input[0]-1, d = input[1]
        
        var directions = Array(repeating: 0, count: 4)
        directions[n] = d
        
        for i in n..<3 where gears[i][2] != gears[i+1][6] {
            directions[i+1] = -directions[i]
        }
        
        for i in stride(from: n, to: 0, by: -1) where gears[i][6] != gears[i-1][2] {
            directions[i-1] = -directions[i]
        }
        
        for i in 0..<directions.count where directions[i] != 0 {
            if directions[i] == 1 {
                gears[i].insert(gears[i].removeLast(), at: 0)
            } else {
                gears[i].append(gears[i].removeFirst())
            }
        }
    }
    
    var result = 0
    for i in 0..<gears.count where gears[i][0] == 1 {
        result += [1, 2, 4, 8][i]
    }
    print(result)
}
solution()