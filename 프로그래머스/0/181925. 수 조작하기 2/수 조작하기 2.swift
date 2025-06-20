import Foundation

func solution(_ numLog:[Int]) -> String {
    var result = ""
    let op = [1: "w", -1: "s", 10: "d", -10: "a"]
    for i in 1..<numLog.count {
        let diff = numLog[i] - numLog[i - 1]
        result += op[diff]!
    }
    return result
}