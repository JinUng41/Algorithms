import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let gcd: (Int, Int) -> Int = { x, y in
        var numX = x
        var numY = y
        while numY != 0 {
            let temp = numX % numY
            numX = numY
            numY = temp
        }
        return numX
    }
    var n = b / gcd(a, b)
    
    while n % 5 == 0 { n /= 5 }
    while n % 2 == 0 { n /= 2 }
    
    return n == 1 ? 1 : 2
}