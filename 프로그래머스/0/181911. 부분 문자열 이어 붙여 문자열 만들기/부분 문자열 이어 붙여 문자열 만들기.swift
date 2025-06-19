import Foundation

func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
    var result = ""
    for i in 0..<my_strings.count {
        result += String(Array(my_strings[i])[parts[i][0]...parts[i][1]])
    }
    return result
}