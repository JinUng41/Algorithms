var a = [String: Int]()
var b = [Int: String]()
let nm = readLine()!.split(separator: " ").map { Int($0)! }
for i in 1...nm[0] {
    let pocketmon = readLine()!
    a[pocketmon] = i
    b[i] = pocketmon
}
var z = ""
for _ in 0..<nm[1] {
    let c = readLine()!
    if let d = Int(c) { // 숫자 입력 시
        z.append("\(b[d]!)\n")
    } else {
        z.append("\(a[c]!)\n")
    }
}
print(z)