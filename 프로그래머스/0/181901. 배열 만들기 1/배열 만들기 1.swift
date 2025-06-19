import Foundation

func solution(_ n:Int, _ k:Int) -> [Int] {
    var temp = [Int]()
    for i in 1...n where i % k == 0 {
        temp.append(i)
    }
    return temp
}