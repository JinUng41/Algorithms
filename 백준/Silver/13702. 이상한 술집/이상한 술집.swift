let NK = readLine()!.split(separator: " ").map { Int($0)! }
let (N, K) = (NK[0], NK[1])
var left = 1
var right = -1
var kettles = [Int]()
for _ in 0..<N {
    let kettle = Int(readLine()!)!
    right = max(right, kettle)
    kettles.append(kettle)
}
while left <= right {
    let mid = (left + right) / 2
    var count = 0
    for kettle in kettles {
        count += (kettle / mid)
    }
    if count < K {
        right = mid - 1
    } else {
        left = mid + 1
    }
}
print(right)