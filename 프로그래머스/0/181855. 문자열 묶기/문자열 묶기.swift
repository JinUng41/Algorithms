import Foundation

func solution(_ strArr:[String]) -> Int {
    var dict = [Int: Int]()
    
    for string in strArr {
        if dict[string.count] == nil {
            dict[string.count] = 1
            continue
        }
        
        dict[string.count]! += 1
    }
    
    return dict.max { $0.value < $1.value }!.value
}