import Foundation

func solution(_ n:Int) -> [[Int]] {
    var arr = Array(repeating: Array(repeating: 0, count: n), count: n)
    let dy = [0, 1, 0, -1], dx = [1, 0, -1, 0]
    
    var row = 0, col = 0, directionIdx = 0
    
    for num in 1...(n * n) {
        arr[row][col] = num
        
        var nextRow = row + dy[directionIdx], nextCol = col + dx[directionIdx]
        
        if nextRow < 0 || nextRow >= n || nextCol < 0 || nextCol >= n || arr[nextRow][nextCol] != 0 {
            directionIdx = (directionIdx + 1) % 4
            nextRow = row + dy[directionIdx]
            nextCol = col + dx[directionIdx]
        }
        
        row = nextRow
        col = nextCol
    }
    
    return arr
}