func BOJ_1931(_ N: Int) {
    var meetings = [(Int, Int)]()
    for _ in 0..<N {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        meetings.append((input[0], input[1]))
    }
    meetings.sort { return $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1 }
    var now = -1, count = 0
    meetings.forEach {
        if $0.0 >= now {
            now = $0.1
            count += 1
        }
    }
    print(count)
}
BOJ_1931(Int(readLine()!)!)