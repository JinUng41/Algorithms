import Foundation

func solution(_ array:[Int]) -> Int {
    var count = 0
    for n in array {
        let arr = Array(String(n))
        for i in 0..<arr.count where arr[i] == "7" {
            count += 1
        }
    }
    return count
}