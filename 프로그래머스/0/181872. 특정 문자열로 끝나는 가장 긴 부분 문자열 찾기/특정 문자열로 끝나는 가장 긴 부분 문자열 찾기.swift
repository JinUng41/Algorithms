import Foundation

func solution(_ myString:String, _ pat:String) -> String {
    return String(myString.prefix(upTo: myString.range(of: pat, options: .backwards)!.upperBound))
}