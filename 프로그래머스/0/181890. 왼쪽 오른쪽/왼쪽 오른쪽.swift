import Foundation

func solution(_ str_list:[String]) -> [String] {
    for i in 0..<str_list.count {
        let str = str_list[i]
        if str == "l" {
            return Array(str_list[..<i])
        }
        
        if str == "r" {
            return Array(str_list[(i + 1)...])
        }
    }
    return []
}