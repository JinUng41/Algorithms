import Foundation

func solution(_ myString:String) -> [String] {
    return myString.split(separator: "x", omittingEmptySubsequences: true).map(String.init).sorted()
}