import Foundation

func solution(_ arr:[Int], _ flag:[Bool]) -> [Int] {
    var result = [Int]()
    for i in 0..<arr.count {
        let n = arr[i]
        let condition = flag[i]
        
        if condition {
            for _ in 0..<n * 2 {
                result.append(n)
            }
        } else {
            for _ in 0..<n {
                result.removeLast()
            }
        }
    }
    return result
}