import Foundation

let num = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map { Int($0)! }
let findNum = Int(readLine()!)!
var count = 0
for idx in 0...num - 1 {
    if findNum == numbers[idx] {
        count += 1
    }
}

print(count)