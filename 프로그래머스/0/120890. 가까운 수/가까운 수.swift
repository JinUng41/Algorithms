import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var minDiff = Int.max, index = 0
    for i in 0..<array.count {
        let diff = n - array[i]
        if abs(diff) < abs(minDiff) {
            minDiff = diff
            index = i
        } else if abs(diff) == abs(minDiff), diff > minDiff {
            minDiff = diff
            index = i
        }
    }
    return array[index]
}