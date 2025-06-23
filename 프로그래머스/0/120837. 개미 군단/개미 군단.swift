import Foundation

func solution(_ hp:Int) -> Int {
    var sum = 0, hp = hp
    if hp / 5 != 0 {
        sum += (hp / 5)
        hp %= 5
    }
    
    if hp / 3 != 0 {
        sum += (hp / 3)
        hp %= 3
    }
    
    sum += hp
    return sum
}