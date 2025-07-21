import Foundation

let input = (0..<9).map { _ in Int(readLine()!)! }
let sum = input.reduce(0, +)

var fake1 = 0, fake2 = 0

loop: for i in 0..<input.count {
    for j in i + 1..<input.count where sum - (input[i] + input[j]) == 100 {
        fake1 = input[i]
        fake2 = input[j]
        break loop
    }
}

print(input.filter { $0 != fake1 && $0 != fake2 }.map { String($0) }.joined(separator: "\n"))