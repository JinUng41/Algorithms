import Foundation

func solution(_ n:Int) -> [[Int]] {
    var arr = Array(repeating: Array(repeating: 0, count: n), count: n)
    for i in 0..<n {
        arr[i][i] = 1
    }
    return arr
}