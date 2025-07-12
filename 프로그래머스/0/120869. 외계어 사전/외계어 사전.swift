import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    var result = [String]()
    for string in dic {
        var flag = true
        for s in spell where !string.contains(s) {
            flag = false
            break
        }
        
        if flag {
            result.append(string)
        }
    }
    return result.isEmpty ? 2 : 1
}