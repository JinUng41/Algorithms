import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    return numlist.sorted {
        let diff1 = $0 - n
        let diff2 = $1 - n
        
        if abs(diff1) == abs(diff2) {
            return $0 > $1
        } else {
            return abs(diff1) < abs(diff2)
        }
    }
}