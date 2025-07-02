import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var indices = [Int]()
    for i in 0..<arr.count where arr[i] == 2 {
        indices.append(i)
    }
    
    if indices.isEmpty {
        return [-1]    
    }
    
    if indices.count == 1 {
        return [arr[indices.first!]]
    }
    
    return Array(arr[indices[0]...indices[indices.count - 1]])
}