import Foundation

func solution(_ num_list:[Int]) -> Int {
    let n1 = num_list.reduce(1, *)
    let n2 = num_list.reduce(0, +)
    return n1 < n2 * n2 ? 1 : 0
}