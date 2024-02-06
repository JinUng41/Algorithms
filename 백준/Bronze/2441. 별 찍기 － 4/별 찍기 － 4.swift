let n = Int(readLine()!)!
for i in (1...n).reversed() {
    print(String(repeating: " ", count: n-i), terminator: "")
    print(String(repeating: "*", count: i))
}