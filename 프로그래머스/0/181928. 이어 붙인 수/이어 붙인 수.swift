import Foundation

func solution(_ num_list:[Int]) -> Int {
    var n1 = ""
    var n2 = ""
    for num in num_list {
        if num % 2 == 0 {
            n2 += "\(num)"
        } else {
            n1 += "\(num)"
        }
    }
    return Int(n1)! + Int(n2)!
}