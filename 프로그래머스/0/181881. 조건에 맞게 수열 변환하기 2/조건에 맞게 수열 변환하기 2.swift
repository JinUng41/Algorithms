import Foundation

func solution(_ arr:[Int]) -> Int {
    var x = 0
    var tempArr = arr
    
    while true {
        var isChanged = false
        
        for i in 0..<tempArr.count {
            let originalValue = tempArr[i]
            var newValue = originalValue
            
            if originalValue >= 50 && originalValue % 2 == 0 {
                newValue = originalValue / 2
            } else if originalValue < 50 && originalValue % 2 != 0 {
                newValue = originalValue * 2 + 1
            }
            
            if newValue != originalValue {
                tempArr[i] = newValue
                isChanged = true
            }
        }
        
        if !isChanged { break }
        x += 1
    }
    return x
}