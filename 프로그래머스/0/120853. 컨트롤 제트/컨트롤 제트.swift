import Foundation

func solution(_ s:String) -> Int {
    var sum = 0, previous = 0
    for char in s.split(separator: " ") {
        if char == "Z" {
            sum -= previous
        } else {
            let n = Int(char)!
            sum += n
            previous = n
        }
    }
    return sum
}