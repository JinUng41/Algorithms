import Foundation

func solution(_ sides:[Int]) -> Int {
    let sortedSides = sides.sorted()
    let a = sortedSides[0], b = sortedSides[1]
    let case1 = ((b - a + 1)...b).count
    let case2 = ((b + 1)..<(a + b)).count
    return case1 + case2
}