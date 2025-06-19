import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    var result = ""
    for n in index_list {
        let index = my_string.index(my_string.startIndex, offsetBy: n)
        result += String(my_string[index])
    }
    return result
}