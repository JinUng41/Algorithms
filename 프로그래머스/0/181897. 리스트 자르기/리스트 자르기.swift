import Foundation

func solution(_ n:Int, _ slicer:[Int], _ num_list:[Int]) -> [Int] {
    let (a, b, c) = (slicer[0], slicer[1], slicer[2])
    if n == 1 {
        return Array(num_list[0...b])
    } else if n == 2 {
        return Array(num_list[a...])
    } else if n == 3 {
        return Array(num_list[a...b])
    } else {
        var result: [Int] = []
        for i in stride(from: a, through: b, by: c) {
            result.append(num_list[i])
        }
        return result
    }
}