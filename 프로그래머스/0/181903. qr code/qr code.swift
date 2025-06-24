import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    return Array(code)
    .enumerated()
    .filter { $0.offset % q == r }
    .map { String($0.element) }
    .joined()
}