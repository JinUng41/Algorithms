import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    var temp = arr
    if arr.count % 2 == 1 {
        for i in 0..<temp.count where i % 2 == 0 {
            temp[i] = temp[i] + n
        }
    } else {
        for i in 0..<temp.count where i % 2 == 1 {
            temp[i] = temp[i] + n
        }
    }
    return temp
}