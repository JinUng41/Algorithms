import Foundation

func solution(_ arr:[Int]) -> Int {
    var x = 0
    var currentArr = arr
    
    while true {
        let previousArr = currentArr
        currentArr = currentArr.map {
            if $0 >= 50 && $0 % 2 == 0 {
                return $0 / 2
            } else if $0 < 50 && $0 % 2 != 0 {
                return $0 * 2 + 1
            } else {
                return $0
            }
        }
        if previousArr == currentArr { break }
        x += 1
    }
    return x
}