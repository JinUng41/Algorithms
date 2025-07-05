import Foundation

func solution(_ num_list:[Int]) -> Int {
    var x = 0
    for i in 0..<num_list.count {
        var value = num_list[i]
        while value != 1 {
            if value % 2 == 0 {
                value /= 2
                x += 1
            } else if value % 2 == 1 {
                value -= 1
                value /= 2
                x += 1
            }
        }
    }
    return x
}