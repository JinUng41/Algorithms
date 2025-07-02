import Foundation

func solution(_ arr:[Int], _ intervals:[[Int]]) -> [Int] {
    var result = [Int]()
    for interval in intervals {
        result.append(contentsOf: Array(arr[interval[0]...interval[1]]))
    }
    return result
}