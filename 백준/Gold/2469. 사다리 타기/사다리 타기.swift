func solution(_ k: Int, _ n: Int, _ participants: [Character]) {
    var questionLine = 0
    var ladders = [[Character]]()
    for i in 0..<n {
        let input = readLine()!.map { $0 }
        if input[0] == "?" { questionLine = i }
        ladders.append(input)
    }
    
    var start = participants.sorted()
    for y in 0..<questionLine {
        for x in 0..<k-1 where ladders[y][x] == "-" {
            start.swapAt(x, x+1)
        }
    }
    
    var end = participants
    for y in (questionLine+1..<n).reversed() {
        for x in 0..<k-1 where ladders[y][x] == "-" {
            end.swapAt(x, x+1)
        }
    }
    
    var result = Array(repeating: "*", count: k-1)
    for i in 0..<k-1 where start[i] != end[i] {
        guard start[i] == end[i+1], start[i+1] == end[i] else {
            result = Array(repeating: "x", count: k-1)
            break
        }
        result[i] = "-"
        start.swapAt(i, i+1)
    }
    
    print(result.joined())
}
solution(Int(readLine()!)!, Int(readLine()!)!, readLine()!.map { ($0) })