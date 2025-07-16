import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    var result = [Int]()
    let halfNum = num / 2, middle = total / num
    
    let start: Int
    if num % 2 == 0 {
        start = middle - halfNum + 1
    } else {
        start = middle - halfNum
    }
    
    for i in 0..<num {
        result.append(start + i)
    }
    return result
}