import Foundation

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    var sum = 0
    for i in 0..<included.count where included[i] {
        let temp = a + d * i
        sum += temp
    }
    return sum
}