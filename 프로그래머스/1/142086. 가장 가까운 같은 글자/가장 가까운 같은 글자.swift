import Foundation

func solution(_ s: String) -> [Int] {
    var result: [Int] = []
    var lastSeenIndex: [Character: Int] = [:]

    for (currentIndex, char) in s.lowercased().enumerated() {
        if let previousIndex = lastSeenIndex[char] {
            result.append(currentIndex - previousIndex)
        } else {
            result.append(-1)
        }
        lastSeenIndex[char] = currentIndex
    }
    return result
}