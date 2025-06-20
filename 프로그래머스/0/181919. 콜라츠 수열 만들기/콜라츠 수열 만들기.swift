import Foundation

func solution(_ n:Int) -> [Int] {
    var x = n
    var arr = [Int]()
    while x > 1 {
        arr.append(x)
        if x % 2 == 0 {
            x /= 2
        } else {
            x = 3 * x + 1
        }
    }
    arr.append(1)
    return arr
}