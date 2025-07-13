import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    if a % 2 == 1, b % 2 == 1 {
        return a * a + b * b
    } else if a % 2 == 1 || b % 2 == 1 {
        return (a + b) * 2
    } else {
        return abs(a - b)
    }
}