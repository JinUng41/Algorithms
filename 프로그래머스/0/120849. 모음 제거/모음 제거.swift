import Foundation

func solution(_ my_string:String) -> String {
    let vowels = ["a", "e", "i", "o", "u"]
    var temp = my_string
    for vowel in vowels {
        temp = temp.replacingOccurrences(of: vowel, with: "")
    }
    return temp
}