import Foundation

func solution(_ n: Int) -> Int {
    return String(n).map { $0.hexDigitValue! }.reduce(0, +)
}