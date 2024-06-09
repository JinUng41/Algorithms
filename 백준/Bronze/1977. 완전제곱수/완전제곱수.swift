func BOJ_1977(_ M: Int, _ N: Int) {
    var numbers = [Int]()
    for i in 1...100 {
        if M...N ~= i*i { numbers.append(i*i) }
    }
    print(numbers.count == 0 ? -1 : "\(numbers.reduce(0, +))\n\(numbers.min()!)")
}
BOJ_1977(Int(readLine()!)!, Int(readLine()!)!)