import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var result = 0
    for i in left...right {
        var count = 0
        for j in 1...i where i % j == 0 {
            count += 1
        }
        result += count % 2 == 0 ? i : -i
    }
    return result
}