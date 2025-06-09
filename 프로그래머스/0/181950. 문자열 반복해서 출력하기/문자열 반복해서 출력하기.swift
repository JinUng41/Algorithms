import Foundation

let input = readLine()!.split(separator: " ").compactMap { "\($0)" }
let (str, count) = (input[0], Int(input[1])!)
var result = ""
(0..<count).forEach { _ in result += "\(str)" }
print(result)