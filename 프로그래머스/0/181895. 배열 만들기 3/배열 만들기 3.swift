import Foundation

func solution(_ arr:[Int], _ intervals:[[Int]]) -> [Int] {
    return intervals.flatMap { Array(arr[$0[0]...$0[1]]) }
}