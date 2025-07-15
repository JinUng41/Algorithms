import Foundation

func solution(_ board: [[Int]], _ k: Int) -> Int {
    var sum = 0
    for i in 0..<board.count {
        for j in 0..<board[i].count where i + j <= k {
            sum += board[i][j]
        }
    }
    return sum
}