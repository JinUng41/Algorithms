import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var temp = arr
    for i in 0..<query.count {
        if i % 2 == 0 {
            temp.removeSubrange((query[i] + 1)...)
        } else {
            temp.removeSubrange(..<query[i])
        }
    }
    return temp
}