let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])
var a = Set<String>()
var b = Set<String>()
var result = ""
for _ in 0..<n+m {
    let name = readLine()!
    a.contains(name) ? b.insert(name) : a.insert(name)
}
print(b.count)
b.sorted().forEach { result.append("\($0)\n") }
print(result)