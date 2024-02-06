var a = Set<String>()
for _ in 0..<Int(readLine()!)! {
    let bc = readLine()!.split(separator: " ").map { String($0) }
    if bc[1] == "enter" { a.insert(bc[0]) } else { a.remove(bc[0]) }
}
var d = ""
for i in a.sorted(by: >) { d.append("\(i)\n") }
print(d)