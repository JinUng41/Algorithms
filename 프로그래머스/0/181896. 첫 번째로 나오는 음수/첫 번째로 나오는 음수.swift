import Foundation

func solution(_ num_list:[Int]) -> Int {
    for i in 0..<num_list.count where num_list[i] < 0 {
        return i
    }
    return -1
}