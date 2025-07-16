import Foundation

func solution(_ A:String, _ B:String) -> Int {
    if A == B {
        return 0
    }
    
    var arrA = Array(A)
    let initialA = Array(A), arrB = Array(B)
    var count = 0
    
    while arrA != arrB {
        let lastChar = arrA.removeLast()
        arrA.insert(lastChar, at: 0)
        count += 1
        
        if arrA == initialA {
            count = -1
            break
        }
    }
    return count
}