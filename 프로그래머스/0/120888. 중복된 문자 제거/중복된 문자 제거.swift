import Foundation

func solution(_ my_string:String) -> String {
    var result = ""
    var temp = Set<Character>()
    for char in my_string where !temp.contains(char) {
        result += "\(char)"
        temp.insert(char)
    }
    return result
}