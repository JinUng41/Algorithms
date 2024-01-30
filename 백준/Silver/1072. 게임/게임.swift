let XY = readLine()!.split(separator: " ").map { Int($0)! }
let (x, y) = (XY[0], XY[1])
let Z = y * 100 / x

var result = -1
var left = 1
var right = 1_000_000_000
while left <= right {
    let mid = (left + right) / 2
    
    let game = x + mid
    let win = y + mid
    let rate = win * 100 / game
    
    if Z == rate {
        left = mid + 1
    } else {
        right = mid - 1
        result = mid
    }
}
print(result)