import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var result = [Int]()
    for i in 0..<arr.count where !result.contains(arr[i]) && result.count < k {
        result.append(arr[i])
    }
    
    if result.count < k {
        for _ in 0..<(k - result.count) {
            result.append(-1)
        }
    }
    return result
}