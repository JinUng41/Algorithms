func selfNum(_ n: Int) -> Int {
    var sum = n
    var num = n
    while num > 0 {
        sum += num % 10
        num /= 10
    }
    if sum > 10000 { sum = 0 }
    return sum
}

var arr = [Int](repeating: 0, count: 10001)
var z = ""
for i in 0..<10001 { arr[selfNum(i)] = 1 }
for j in 0..<10001 { if arr[j] != 1 { z += "\(j)\n" } }
print(z)