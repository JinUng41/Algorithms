import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var numbers = [Int]()
    for (num, flag) in zip(absolutes, signs) {
        numbers.append(flag ? num : -num)
    }
    return numbers.reduce(0, +)
}