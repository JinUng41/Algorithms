let nk = readLine()!.split(separator: " ").map { Int($0)! }
let n = nk[0], k = nk[1]
var heights = readLine()!.split(separator: " ").map { Int($0)! }
heights.append(heights.last!)
var left = 0
var right = Int.max
while left <= right {
    let mid = (left + right) / 2
    let count = check(mid)
    if k < count {
        left = mid + 1
    } else {
        right = mid - 1
    }
}
print(left)
func check(_ h: Int) -> Int {
    var count = 0
    for i in 0..<n {
        let now = heights[i]
        let next = heights[i + 1]
        if i == 0 {
            if abs(now - next) > h { count += 1 }
        } else {
            let prev = heights[i - 1]
            if abs(now - prev) > h || abs(now - next) > h { count += 1 }
        }
    }
    return count
}