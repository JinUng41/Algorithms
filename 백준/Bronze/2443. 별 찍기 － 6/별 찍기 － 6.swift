let n = Int(readLine()!)!
for i in (1...n).reversed() { print((String(repeating: " ", count: n-i)+String(repeating: "*", count: 2*i-1))) }