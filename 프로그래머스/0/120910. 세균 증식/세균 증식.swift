import Foundation

func solution(_ n:Int, _ t:Int) -> Int {
    let result = Double(n) * pow(2.0, Double(t))
    return Int(result)
}