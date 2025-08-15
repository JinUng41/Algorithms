import Foundation

func solution(_ number:[Int]) -> Int {
    if number.count == 3 {
        return number.reduce(0, +) == 0 ? 1 : 0
    }
    
    var count = 0
    for i in 0..<number.count {
        for j in i + 1..<number.count {
            for k in j + 1..<number.count {
                if number[i] + number[j] + number[k] == 0 {
                    count += 1
                }
            }
        }
    }
    return count
}