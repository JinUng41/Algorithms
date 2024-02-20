let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0], m = nm[1]
let trees = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
var left = 0
var right = trees.last!
while left <= right {
    let mid = (left + right) / 2
    var meter = 0
    for tree in trees { if tree > mid { meter += tree - mid } }
    if meter >= m {
        left = mid + 1
    } else {
        right = mid - 1
    }
}
print(right)