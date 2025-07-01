import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var temp = numbers
    if direction == "right" {
        temp.insert(temp.removeLast(), at: 0)
    } else {
        temp.append(temp.removeFirst())
    }
    return temp
}