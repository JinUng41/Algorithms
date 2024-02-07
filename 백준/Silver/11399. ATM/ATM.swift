let n = Int(readLine()!)!
let times = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
var result = 0
for i in (0...times.count-1).reversed() { for j in 0...i { result += times[j] } }
print(result)