import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    var sum = 0
    while sum < n { sum += slice }
    return sum / slice
}