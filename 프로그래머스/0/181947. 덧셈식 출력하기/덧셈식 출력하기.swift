import Foundation

let n = readLine()!.components(separatedBy: [" "]).compactMap { Int($0) }
print("\(n[0]) + \(n[1]) = \(n.reduce(0, +))")