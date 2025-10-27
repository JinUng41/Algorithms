let n = Int(readLine()!)!
let a = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
let b = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: >)
print(zip(a, b).map { $0 * $1 }.reduce(0, +))