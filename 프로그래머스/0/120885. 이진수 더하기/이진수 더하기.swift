import Foundation

func solution(_ bin1: String, _ bin2: String) -> String {
    let decimal1 = Int(bin1, radix: 2)!, decimal2 = Int(bin2, radix: 2)!
    return String(decimal1 + decimal2, radix: 2)
}