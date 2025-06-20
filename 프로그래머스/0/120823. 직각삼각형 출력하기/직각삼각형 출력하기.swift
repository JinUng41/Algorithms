import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
var result = ""
for i in 1...n[0] {
    for _ in 1...i { result += "*" }
    result += "\n"
}
print(result)