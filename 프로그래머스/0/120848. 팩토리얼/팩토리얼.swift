import Foundation

func solution(_ n:Int) -> Int {
    var factorial = 1
    var i = 1
    
    while true {
        let nextFactorial = factorial * (i + 1)
        
        if nextFactorial > n { break }
        
        factorial = nextFactorial
        i += 1
    }
    
    return i
}