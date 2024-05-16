import Foundation

let total = Int(readLine()!)!
let kind = Int(readLine()!)!
var result = 0

for _ in 1...kind {
    let input = readLine()!.components(separatedBy: " ")
    let object = Int(input[0])!
    let count = Int(input[1])!
    result += (object * count)
}

print(result == total ? "Yes" : "No")