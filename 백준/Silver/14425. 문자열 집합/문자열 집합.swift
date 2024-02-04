let nm = readLine()!.split(separator: " ").map { Int($0)! }
var a = Set<String>()
for _ in 0..<nm[0] { a.insert(readLine()!) }
var b = 0
for _ in 0..<nm[1] { if a.contains(readLine()!) { b += 1 } }
print(b)