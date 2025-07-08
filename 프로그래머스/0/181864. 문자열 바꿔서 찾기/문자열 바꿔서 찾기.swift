import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
     return Array(myString)
        .map { char -> String in
            if char == "A" {
                return "B"
            } else if char == "B" {
                return "A"
            } else {
                return String(char)
            }
        }
        .joined()
        .contains(pat) ? 1 : 0
}