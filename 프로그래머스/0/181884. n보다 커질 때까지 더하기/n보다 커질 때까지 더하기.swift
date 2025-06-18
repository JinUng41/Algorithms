import Foundation

func solution(_ numbers:[Int], _ n:Int) -> Int {
    var result = 0
    for num in numbers where result <= n { result += num }
    return result
}