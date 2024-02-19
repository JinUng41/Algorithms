let n = Int(readLine()!)!
var a = [Int](repeating: 0, count: 10001)
var z = ""
for _ in 0..<n { a[Int(readLine()!)!] += 1 }
for i in 1...10000 { z += String(repeating: "\(i)\n", count: a[i]) }
print(z)