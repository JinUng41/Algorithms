func BOJ_7568(_ N: Int) {
    var info = [(x: Int, y: Int)]()
    var ranks = Array(repeating: 1, count: N)
    for _ in 0..<N {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        info.append((input[0], input[1]))
    }
    for i in 0..<N {
        for j in 0..<N {
            if info[i].x < info[j].x, info[i].y < info[j].y { ranks[i] += 1 }
        }
    }
    print(ranks.map { String($0) }.joined(separator: " "))
}
BOJ_7568(Int(readLine()!)!)