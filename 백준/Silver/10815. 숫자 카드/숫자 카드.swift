let N = Int(readLine()!)!
var nArr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
let M = Int(readLine()!)!
var mArr = readLine()!.split(separator: " ").map { Int($0)! }
var result = Array(repeating: 0, count: M)

for i in 0..<M {
    var left = 0
    var right = N - 1
    
    while left <= right {
        let mid = (left + right) / 2
        if mArr[i] < nArr[mid] {
            right = mid - 1
        } else if mArr[i] > nArr[mid] {
            left = mid + 1
        } else {
            result[i] = 1
            break
        }
    }
}
print(result.map({ "\($0)" }).joined(separator: " "))