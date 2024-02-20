typealias Cow = (x: Int, y: Int)
let n = Int(readLine()!)!
var a = [Cow]()
for _ in 0..<n {
    let cow = readLine()!.split(separator: " ").map { Int($0)! }
    a.append((cow[0], cow[1]))
}
a.sort { $0.x < $1.x }
var z = 0
for i in 0..<n {
    if a[i].x > z { z += a[i].x - z }
    z += a[i].y
}
print(z)