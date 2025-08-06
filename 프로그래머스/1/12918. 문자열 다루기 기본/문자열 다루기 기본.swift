func solution(_ s:String) -> Bool {
    if s.count != 4, s.count != 6 {
        return false
    }
    
    if let _ = Int(s) {
        return true
    } else {
        return false
    }
}