import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    let numString = String(num), kString = String(k)
    if let foundIndex = numString.firstIndex(of: Character(kString)) {
        return numString.distance(from: numString.startIndex, to: foundIndex) + 1
    } else {
        return -1
    }
}