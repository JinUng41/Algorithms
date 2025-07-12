import Foundation

func solution(_ board: [[Int]]) -> Int {
    let n = board.count
    var dangerZoneBoard = Array(repeating: Array(repeating: 0, count: n), count: n)
    for row in 0..<n {
        for col in 0..<n where board[row][col] == 1 {
            for dr in -1...1 {
                for dc in -1...1 {
                    let newRow = row + dr
                    let newCol = col + dc
                    
                    if (0..<n).contains(newRow) && (0..<n).contains(newCol) {
                        dangerZoneBoard[newRow][newCol] = 1
                    }
                }
            }
        }
    }
    
    return dangerZoneBoard.flatMap { $0 }.filter { $0 == 0 }.count
}