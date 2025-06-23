import Foundation

func solution(_ intStrs:[String], _ k:Int, _ s:Int, _ l:Int) -> [Int] {
    var ret = [Int]()
    for str in intStrs {
        let temp = str.map { String($0) }
        let num = Int(temp[s..<s + l].joined())!
        if num > k { ret.append(num) }
    } 
    return ret
}