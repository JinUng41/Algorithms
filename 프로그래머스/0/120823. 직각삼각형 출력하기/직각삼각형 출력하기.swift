import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
var result = ""
for i in 1...n[0] {
    result += String(repeating: "*", count: i) + "\n"
}
print(result)