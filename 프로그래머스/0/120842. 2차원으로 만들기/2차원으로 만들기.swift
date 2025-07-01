import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var result: [[Int]] = []
    for i in stride(from: 0, to: num_list.count, by: n) {
        let endIndex = min(i + n, num_list.count)
        let row = Array(num_list[i..<endIndex])
        result.append(row)
    }
    return result
}