let _ = readLine()
let a = Set(readLine()!.split(separator: " ").map { Int($0)! })
let b = Set(readLine()!.split(separator: " ").map { Int($0)! })
let z = a.subtracting(b).sorted().map { String($0) }
print(z.count)
print(z.joined(separator: " "))