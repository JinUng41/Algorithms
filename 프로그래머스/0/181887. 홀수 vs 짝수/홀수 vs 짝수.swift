import Foundation

func solution(_ num_list:[Int]) -> Int {
    var a = 0, b = 0
    for i in 0..<num_list.count {
        let index = i + 1
        if index % 2 == 1 {
            a += num_list[i]
        } else {
            b += num_list[i]
        }
    }
    return max(a, b)
}