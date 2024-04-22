func BOJ_23740(_ N: Int) {
    var bus = [(s: Int, e: Int, c: Int)](), busResult = [(s: Int, e: Int, c: Int)]()
    for _ in 0..<N {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        bus.append((input[0], input[1], input[2]))
    }
    bus.sort { $0.s < $1.s }
    
    var nowS = bus[0].s, nowE = bus[0].e, nowC = bus[0].c
    for i in 1..<N {
        let (start, end, cost) = bus[i]
        
        if start <= nowE {
            nowE = max(nowE, end)
            nowC = min(nowC, cost)
        } else {
            busResult.append((nowS, nowE, nowC))
            nowS = start
            nowE = end
            nowC = cost
        }
    }
    busResult.append((nowS, nowE, nowC))
    
    var result = ""
    result += "\(busResult.count)\n"
    busResult.forEach { result += "\($0.s) \($0.e) \($0.c)\n" }
    print(result)
}
BOJ_23740(Int(readLine()!)!)