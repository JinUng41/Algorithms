let nm = readLine()!.split(separator: " ").map { Int($0)! }
var a = Set<String>(), b = Set<String>()
var result = ""
for _ in 0..<nm[0]+nm[1] {
    let name = readLine()!
    let _ = a.contains(name) ? b.insert(name) : a.insert(name)
}
print(b.count)
for c in b.sorted() { result.append("\(c)\n") }
print(result)