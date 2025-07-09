import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var result: [Int] = []
    var seen = Set<Int>()
    
    for num in arr {
        if result.count == k {
            break
        }
        
        if !seen.contains(num) {
            result.append(num)
            seen.insert(num)
        }
    }
    
    let remainingCount = k - result.count
    if remainingCount > 0 {
        result.append(contentsOf: Array(repeating: -1, count: remainingCount))
    }
    
    return result
}