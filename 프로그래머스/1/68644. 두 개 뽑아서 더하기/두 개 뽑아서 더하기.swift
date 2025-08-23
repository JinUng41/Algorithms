import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var temp = Set<Int>()
    for i in 0..<numbers.count {
        for j in i + 1..<numbers.count {
            temp.insert(numbers[i] + numbers[j])
        }
    }
    return temp.sorted()
}