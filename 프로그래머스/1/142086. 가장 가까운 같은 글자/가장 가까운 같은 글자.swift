import Foundation

func solution(_ s:String) -> [Int] {
    var result = [Int](repeating: -1, count: s.count)
    var alphabets = [Int](repeating: -1, count: 26)
    Array(s.lowercased()).enumerated().forEach { index, char in 
        let asciiValue = Int(char.asciiValue!) - 97
        let value = alphabets[asciiValue]

        if value != -1 {
            result[index] = index - value
        }
        alphabets[asciiValue] = index
    }
    return result
}