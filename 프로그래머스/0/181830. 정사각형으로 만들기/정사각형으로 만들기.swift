import Foundation

func solution(_ arr: [[Int]]) -> [[Int]] {
    let rowCount = arr.count, colCount = arr[0].count
    let finalSize = max(rowCount, colCount)
    var result = Array(repeating: Array(repeating: 0, count: finalSize), count: finalSize)
    for r in 0..<rowCount {
        for c in 0..<colCount {
            result[r][c] = arr[r][c]
        }
    }
    return result
}