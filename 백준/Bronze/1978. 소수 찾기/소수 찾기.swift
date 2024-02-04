let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }
var count = 0
func check(_ n: Int) -> Bool {
    if n < 2 { return false }
    
    for i in 2..<n {
        if n % i == 0 { return false }
    }
    
    return true
}

input.forEach { if check($0) { count += 1 } }
print(count)