import Foundation

func solution(_ dot:[Int]) -> Int {
    let (x, y) = (dot[0], dot[1])
    if x > 0, y > 0 {
        return 1
    } else if x > 0, y < 0 {
        return 4
    } else if x < 0, y > 0 {
        return 2
    } else {
        return 3
    }
}