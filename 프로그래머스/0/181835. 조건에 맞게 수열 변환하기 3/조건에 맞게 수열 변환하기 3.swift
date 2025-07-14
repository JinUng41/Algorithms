import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    return arr.map {
        if k % 2 == 1 {
            return $0 * k
        } else {
            return $0 + k
        }
    }
}