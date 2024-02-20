let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0], m = nm[1]
var a = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
for _ in 0..<m {
    let temp = a[0] + a[1]
    a[0] = temp
    a[1] = temp
    a.sort()
}
var z = 0
for aa in a { z += aa }
print(z)