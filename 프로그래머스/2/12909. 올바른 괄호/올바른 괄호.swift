import Foundation

func solution(_ s:String) -> Bool
{
    var strings = Array(s)
    var count = 0
    for char in s {
        if char == "(" {
            count += 1
        } else {
            if count == 0 {
                return false
            } else {
                count -= 1
            }
        }
    }
    return count == 0
}
