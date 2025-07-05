import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    let arr = cipher.map { String($0) }
    return stride(from: code - 1, to: cipher.count, by: code).map { arr[$0] }.reduce("", +)
}