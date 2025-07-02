import Foundation

func solution(_ numbers:[Int]) -> Int {
    let temp = numbers.sorted()
    return temp[temp.count - 2] * temp.last!
}