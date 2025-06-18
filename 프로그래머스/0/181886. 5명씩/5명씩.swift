import Foundation

func solution(_ names:[String]) -> [String] {
    var result: [String] = []
    for i in stride(from: 0, to: names.count, by: 5) {
        result.append(names[i])
    }
    return result
}