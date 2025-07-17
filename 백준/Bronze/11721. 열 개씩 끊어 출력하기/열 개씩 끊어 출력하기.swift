import Foundation

let input = readLine()!
let characters = Array(input)
let length = characters.count
var result = ""
for i in stride(from: 0, to: length, by: 10) {
    let endIndex = min(i + 10, length)
    let chunk = String(characters[i..<endIndex])
    result += "\(chunk)\n"
}
print(result)
