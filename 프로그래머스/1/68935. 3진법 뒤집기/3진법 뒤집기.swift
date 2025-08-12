import Foundation

func solution(_ n:Int) -> Int {
    var array = String(n, radix: 3).map { String($0) }
    array.reverse()
    return Int(array.joined(), radix: 3) ?? 0
}