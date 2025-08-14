var numbers = [Int]()
for _ in 0..<7 {
    let n = Int(readLine()!)!
    if n % 2 == 1 {
        numbers.append(n)
    }
}
print(numbers.isEmpty ? -1 : "\(numbers.reduce(0, +))\n\(numbers.min()!)")