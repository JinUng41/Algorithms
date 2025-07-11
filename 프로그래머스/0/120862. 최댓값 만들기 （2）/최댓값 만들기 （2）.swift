import Foundation

func solution(_ numbers:[Int]) -> Int {
    var n = Int.min
    for i in 0..<numbers.count {
        for j in i + 1..<numbers.count {
            n = max(n, numbers[i] * numbers[j])
        }
    }
    return n
}