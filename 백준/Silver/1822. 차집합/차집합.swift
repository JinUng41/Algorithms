let _ = readLine()
let setA = Set(readLine()!.split(separator: " ").map { Int($0)! })
let setB = Set(readLine()!.split(separator: " ").map { Int($0)! })
let result = setA.subtracting(setB).sorted()
print(result.count)
result.forEach { print($0, terminator: " ") }