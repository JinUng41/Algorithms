import Foundation

func solution(_ n:Int) -> Int {
    if n < 4 {
        return 0
    }
    
    var count = 0
    for number in 4...n {
        for i in 2..<number where number % i == 0 {
            count += 1
            break
        }
    }
    return count
}