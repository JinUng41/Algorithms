var numbers = [Int]()
for _ in 0..<7 {
    numbers.append(Int(readLine()!)!)
}
numbers = numbers.filter { $0 % 2 == 1 }
if numbers.isEmpty {
    print(-1)
} else {
    print(numbers.reduce(0, +))
    print(numbers.min()!)
}