let T = Int(readLine()!)!
var result = ""
for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let alpha = readLine()!.split(separator: " ").map { Int($0)! }
    let beta = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    var count = 0
    
    for a in alpha {
        var left = 0
        var right = input[1] - 1
        while left <= right {
            let mid = (left + right) / 2
            if a <= beta[mid] {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        count += left
    }
    result += "\(count)\n"
}
print(result)