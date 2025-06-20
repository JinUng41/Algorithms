import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    let result = (l...r).filter { num in
        num.description.allSatisfy { $0 == "0" || $0 == "5" }
    }
    
    return result.isEmpty ? [-1] : result
}