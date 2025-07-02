import Foundation

func solution(_ n:Int) -> Int {
    let numbers = Array(1...n)
    var result = [Int]()
    for number in numbers where number > 3 {
        for i in 2..<number where number % i == 0 {
            result.append(number)
            break
        }
    }
    return result.count
}