func BOJ_2828(_ N: Int, _ M: Int, _ J: Int) {
    var left = 1, right = M, count = 0
    for _ in 0..<J {
        let position = Int(readLine()!)!
        if position < left {
            count += left - position
            left = position
            right = left + M - 1
        } else if position > right {
            count += position - right
            right = position
            left = right - M + 1
        }
    }
    print(count)
}
let NM = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_2828(NM[0], NM[1], Int(readLine()!)!)