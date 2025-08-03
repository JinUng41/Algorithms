import Foundation

func solution(_ s:String) -> Bool {
    let p = s.lowercased().filter { $0 == "p" }.count
    let y = s.lowercased().filter { $0 == "y" }.count
    
    if p == .zero && y == .zero {
        return true
    }
    
    if p == y {
        return true
    }
    
    return false
}