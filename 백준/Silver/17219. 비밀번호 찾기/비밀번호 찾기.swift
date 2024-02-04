let nm = readLine()!.split(separator: " ").map { Int($0)! }
var info = [String: String]()
var result = ""
for _ in 0..<nm[0] {
    let z = readLine()!.split(separator: " ").map { String($0) }
    info[z[0]] = z[1]
}
for _ in 0..<nm[1] { result.append("\(info[readLine()!]!)\n") }
print(result)