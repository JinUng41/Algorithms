import Foundation

func solution(_ rny_string:String) -> String {
    return Array(rny_string)
        .map { char -> String in
            if char == "m" {
                return "rn"
            } else {
                return String(char)
            }
        }
        .joined()
}