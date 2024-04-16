func BOJ_9506(_ n: Int) {
    var numbers = [Int]()
    for i in 1..<n {
        if n % i == 0 { numbers.append(i) }
    }
    var result = "\(n) is NOT perfect."
    if n == numbers.reduce(0, +) {
        result = "\(n) ="
        numbers.forEach { result.append(" \($0) +")}
        result.removeLast()
    }
    print(result)
}
while let input = Int(readLine()!), input != -1 { BOJ_9506(input) }