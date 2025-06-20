import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var c1 = 0, c2 = 0
    for num in num_list {
        if num % 2 == 0 {
            c1 += 1
        } else {
            c2 += 1
        }
    }
    return [c1, c2]
}

