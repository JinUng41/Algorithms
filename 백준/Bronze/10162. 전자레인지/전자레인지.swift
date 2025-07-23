import Foundation

var t = Int(readLine()!)!
let numbers = [300, 60, 10]
var count = [0, 0, 0]

for i in 0..<numbers.count {
    let number = numbers[i]
    while t >= number {
        t -= number
        count[i] += 1
    }
}
print(t != 0 ? -1 : count.map { String($0) }.joined(separator: " "))