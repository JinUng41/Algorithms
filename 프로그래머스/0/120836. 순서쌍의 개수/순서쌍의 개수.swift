import Foundation

func solution(_ n:Int) -> Int {
    var arr = [(Int, Int)]()
    for i in 1...n where n % i == 0 {
        arr.append((i, n / i))
    }
    return arr.count
}