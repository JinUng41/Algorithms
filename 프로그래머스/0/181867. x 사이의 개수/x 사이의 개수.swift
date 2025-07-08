import Foundation

func solution(_ myString: String) -> [Int] {
    let splitStrings = myString.split(separator: "x", omittingEmptySubsequences: false)
    return splitStrings.map { $0.count }
}