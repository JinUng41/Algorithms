import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var sortedD = d.sorted()
    var b = budget
    var count = 0
    for i in sortedD where b - i >= 0 {
        b -= i
        count += 1
    }
    return count
}