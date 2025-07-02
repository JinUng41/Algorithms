import Foundation

func solution(_ n:Int) -> Int {
    var factorial = 1, i = 1
    while factorial <= n {
        factorial *= (i + 1)
        i += 1
    }
    return i - 1
}