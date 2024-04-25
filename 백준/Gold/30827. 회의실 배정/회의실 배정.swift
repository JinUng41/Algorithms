func BOJ_30827(_ N: Int, _ K: Int) {
    var meetings = [(Int, Int)](), rooms = Array(repeating: 0, count: K)
    for _ in 0..<N {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        meetings.append((input[0], input[1]))
    }
    meetings.sort { $0.1 < $1.1 }
    var count = 0
    for meeting in meetings {
        rooms.sort(by: >)
        for i in 0..<K {
            if rooms[i] < meeting.0 {
                rooms[i] = meeting.1
                count += 1
                break
            }
        }
    }
    print(count)
}
let NK = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_30827(NK[0], NK[1])