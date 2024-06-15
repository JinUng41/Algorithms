import Foundation
func BOJ_6131(_ N: Int) {
    var count = 0
    for A in 1...500 {
        let a = A*A, b = a-N
        if b > 0 {
            let B = Int(sqrt(Double(b)))
            if B*B == b, B <= A {
                count += 1
            }
        }
    }
    print(count)
}
BOJ_6131(Int(readLine()!)!)