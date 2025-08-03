import Foundation

func solution(_ numbers:[Int]) -> Int {
    var numberSet = Set(Array(0...9))
    numbers.forEach { numberSet.remove($0) }
    return numberSet.reduce(0, +)
}