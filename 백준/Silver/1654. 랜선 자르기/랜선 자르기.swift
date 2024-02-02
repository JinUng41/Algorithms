let kn = readLine()!.split(separator: " ").map { Int($0)! }
let (k, n) = (kn[0], kn[1])
var lines = [Int]()
var (left, right) = (1, -100_000)
for _ in 0..<k {
    let line = Int(readLine()!)!
    lines.append(line)
    right = max(right, line)
}

while left <= right {
    let mid = (left + right) / 2
    var count = 0
    lines.forEach { count += ($0 / mid) }
    count < n ? (right = mid - 1) : (left = mid + 1)
}
print(right)