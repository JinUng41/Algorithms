import Foundation

func solution(_ arr:[Int], _ delete_list:[Int]) -> [Int] {
    var temp = arr
    temp.removeAll { delete_list.contains($0) }
    return temp
}