import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    var count = 0
    if s1.count < s2.count {
        for str in s1 where s2.contains(str) { count += 1 }
    } else {
        for str in s2 where s1.contains(str) { count += 1 }
    }
    return count
}