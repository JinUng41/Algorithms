func BOJ_1018() {
    let NM = readLine()!.split(separator: " ").map { Int($0)! }
    let M = NM[0], N = NM[1]
    var chess = [[Character]]()
    for _ in 0..<M { chess.append(readLine()!.map { $0 }) }
    var count = 64
    
    for i in 0...M - 8 {
        for j in 0...N - 8 {
            var a = 0, b = 0
            for x in i..<i + 8 {
                for y in j..<j + 8 {
                    if (x + y) % 2 == 0 {
                        if chess[x][y] == "B" { b += 1 } else { a += 1 }
                    } else {
                        if chess[x][y] == "B" { a += 1 } else { b += 1 }
                    }
                }
            }
            count = min(count, a, b)
        }
    }
    print(count)
}
BOJ_1018()