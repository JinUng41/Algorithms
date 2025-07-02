import Foundation

func solution(_ n:Int) -> [Int] {
    var number = n
    var numbers = Set<Int>()
    var divisor = 2
    
    while number > 1 {
        if number % divisor == 0 {
            numbers.insert(divisor)
            number /= divisor
        } else {
            divisor += 1
        }
    }
    return Array(numbers).sorted()
}