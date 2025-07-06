import Foundation

func solution(_ numbers:String) -> Int64 {
    let numberWords = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var resultString = numbers
    for (index, word) in numberWords.enumerated() {
        resultString = resultString.replacingOccurrences(of: word, with: String(index))
    }
    return Int64(resultString)!
}