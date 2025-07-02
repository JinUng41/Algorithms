import Foundation

func solution(_ num_list:[Int]) -> Int {
    guard let firstIndex = num_list.firstIndex(where: { $0 < 0 }) else {
        return -1
    }
    return firstIndex
}