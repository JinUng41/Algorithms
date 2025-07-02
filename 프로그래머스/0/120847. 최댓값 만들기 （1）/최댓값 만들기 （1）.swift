import Foundation

func solution(_ numbers:[Int]) -> Int {
    let temp = numbers.sorted(by: >)
    return temp[0] * temp[1]
}