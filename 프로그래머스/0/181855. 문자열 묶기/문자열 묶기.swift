import Foundation

func solution(_ strArr: [String]) -> Int {
    var arr = [Int](repeating: 0, count: 31)
    strArr.forEach { arr[$0.count] += 1 }
    return arr.max() ?? 0
}