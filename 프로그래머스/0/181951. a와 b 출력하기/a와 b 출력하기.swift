import Foundation

let n = readLine()!.split(separator: " ").compactMap { Int($0) }
print("a = \(n[0])\nb = \(n[1])")