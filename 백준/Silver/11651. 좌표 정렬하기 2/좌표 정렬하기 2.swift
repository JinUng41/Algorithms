var a = [(x: Int, y: Int)]()
for _ in 0..<Int(readLine()!)! {
    let b = readLine()!.split(separator: " ").map { Int($0)! }
    a.append((b[0], b[1]))
}
a.sort { $0.y == $1.y ? $0.x < $1.x : $0.y < $1.y }
var c = ""
for i in a { c.append("\(i.x) \(i.y)\n") }
print(c)