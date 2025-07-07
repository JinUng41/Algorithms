import Foundation

func solution(_ myString: String, _ pat: String) -> Int {
    var count = 0
    
    if myString.count < pat.count { return 0 }
    
    for i in 0...(myString.count - pat.count) {
        let startIndex = myString.index(myString.startIndex, offsetBy: i)
        let endIndex = myString.index(startIndex, offsetBy: pat.count)
        let sub = myString[startIndex..<endIndex]
        if sub == pat {
            count += 1
        }
    }
    return count
}