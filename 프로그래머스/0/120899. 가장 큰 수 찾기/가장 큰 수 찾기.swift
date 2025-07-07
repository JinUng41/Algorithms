import Foundation

func solution(_ array:[Int]) -> [Int] {
    let (index, element) = array.enumerated().max { $0.element < $1.element }!
    return [element, index]
}