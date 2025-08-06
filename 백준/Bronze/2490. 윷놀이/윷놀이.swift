import Foundation

var result = ""
for _ in 0..<3 {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let zero = input.filter { $0 == 0 }.count
    
    if zero == 0 {
        result += "E\n"
    } else if zero == 1 {
        result += "A\n"
    } else if zero == 2 {
        result += "B\n"
    } else if zero == 3 {
        result += "C\n"
    } else {
        result += "D\n"
    }
}
print(result)