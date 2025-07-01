import Foundation

func solution(_ my_string:String) -> [Int] {
    var array = Array(repeating: 0, count: 52)
    for char in my_string {
        if char >= "A" && char <= "Z" {
            let index = Int(char.asciiValue! - Character("A").asciiValue!)
            array[index] += 1
        } else {
            let index = Int(char.asciiValue! - Character("a").asciiValue!) + 26
            array[index] += 1
        }
    }
    return array
}