import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var result = num_list
    let lastIndex = num_list.count - 1
    let n1 = num_list[lastIndex - 1]
    let n2 = num_list[lastIndex]
    if n1 < n2 {
        result.append(n2 - n1)
    } else {
        result.append(n2 * 2)
    }
    return result
}