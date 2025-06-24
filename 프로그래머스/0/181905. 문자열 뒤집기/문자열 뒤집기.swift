import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    var characters = Array(my_string)
    characters[s...e].reverse()
    return String(characters)
}