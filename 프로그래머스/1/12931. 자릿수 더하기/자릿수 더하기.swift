import Foundation

func solution(_ n: Int) -> Int {
    return String(n).reduce(0, { $0 + $1.hexDigitValue! })
}