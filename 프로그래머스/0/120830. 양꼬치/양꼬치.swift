import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    var price = 12000 * n + 2000 * k
    if n >= 10 {
        var num = n / 10
        price = price - 2000 * num
    }
    return price
}
