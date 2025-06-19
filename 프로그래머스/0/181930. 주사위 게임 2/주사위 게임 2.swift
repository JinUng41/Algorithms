import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    let numbers = [a, b, c]
    let uniqueCount = Set(numbers).count
    switch uniqueCount {
    case 1: 
        let n1 = numbers.reduce(0, +)
        let n2 = numbers.reduce(0) { $0 + $1 * $1 }
        let n3 = numbers.reduce(0) { $0 + $1 * $1 * $1 }
        return n1 * n2 * n3
    case 2: 
        let n1 = numbers.reduce(0, +)
        let n2 = numbers.reduce(0) { $0 + $1 * $1 }
        return n1 * n2
    default: 
        return numbers.reduce(0, +)
    }
}