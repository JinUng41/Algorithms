import Foundation

func solution(_ myString:String) -> String {
    return myString.reduce(into: "") { result, char in
        if char == "a" {
            result.append("A")
        } else if char != "A" && char.isUppercase {
            result.append(char.lowercased())
        } else {
            result.append(char)
        }
    }
}