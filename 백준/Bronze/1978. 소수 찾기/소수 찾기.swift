func check(_ n: Int) -> Bool {
    if n < 2 { return false }
    for i in 2..<n { if n % i == 0 { return false } }
    return true
}
let _ = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }.filter { check($0) }
print(input.count)