import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    return String(my_string.filter { String($0) != letter })
}