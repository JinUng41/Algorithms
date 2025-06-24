import Foundation

func solution(_ my_string:String, _ m:Int, _ c:Int) -> String {
    let characters = Array(my_string)
    var result = ""
    
    for i in stride(from: c - 1, to: characters.count, by: m) {
        result += String(characters[i])
    }
    return result
}