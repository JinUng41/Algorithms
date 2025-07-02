import Foundation

func solution(_ my_string:String) -> [Int] {
    return my_string.compactMap { $0.wholeNumberValue }.sorted()
}