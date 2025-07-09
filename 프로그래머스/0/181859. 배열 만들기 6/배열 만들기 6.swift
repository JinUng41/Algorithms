import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var stk: [Int] = []
    for num in arr {
        if !stk.isEmpty && stk.last == num {
            stk.removeLast()
        } else {
            stk.append(num)
        }
    }
    return stk.isEmpty ? [-1] : stk
}