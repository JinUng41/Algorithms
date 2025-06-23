import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    func combination(_ n: Int, _ r: Int) -> Int {
        if r == 0 || r == n { return 1 }
        if r == 1 { return n }
        
        let r = min(r, n - r)
        
        var result = 1
        for i in 0..<r {
            result = result * (n - i) / (i + 1)
        }
        return result
    }
    
    return combination(balls, share)
}