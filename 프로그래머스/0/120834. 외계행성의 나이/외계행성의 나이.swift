import Foundation

func solution(_ age:Int) -> String {
    let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
    return String(age).compactMap { char in
        if let digit = Int(String(char)) {
            return alphabet[digit]
        }
        return nil
    }.joined()
}