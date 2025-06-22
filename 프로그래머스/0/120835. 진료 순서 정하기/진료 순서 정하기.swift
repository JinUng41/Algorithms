import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    let sorted = emergency.sorted(by: >)
    var rankDict = [Int: Int]()
    for (index, value) in sorted.enumerated() where rankDict[value] == nil { rankDict[value] = index + 1 }
    return emergency.map { rankDict[$0]! }
}