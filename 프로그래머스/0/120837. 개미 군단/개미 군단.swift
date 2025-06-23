import Foundation

func solution(_ hp:Int) -> Int {
    var sum = 0, hp = hp
    for i in [5, 3, 1] where hp / i != 0 {
        sum += (hp / i)
        hp %= i
    }
    return sum
}