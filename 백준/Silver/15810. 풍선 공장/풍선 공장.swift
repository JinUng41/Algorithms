let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0], m = nm[1]
let times = readLine()!.split(separator: " ").map { Int($0)! }
var left = 0
var right = m * times.min()!
while left <= right {
    let mid = (left + right) / 2
    var balloons = 0
    for time in times { balloons += mid / time }
    if balloons >= m {
        right = mid - 1
    } else {
        left = mid + 1
    }
}
print(left)