func gcd(_ lhs: Int, _ rhs: Int) -> Int {
    var a = lhs, b = rhs
    while b != 0 {
        let temp = b
        b = a % b
        a = temp
    }
    return a
}
func BOJ_5618(_ n: Int) {
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }
    var temp = numbers[0]
    for number in numbers { temp = gcd(temp, number) }
    var divisors = [Int]()
    for i in 1...temp {
        if temp % i == 0 { divisors.append(i) }
    }
    print(divisors.map { String($0) }.joined(separator: "\n"))
}
BOJ_5618(Int(readLine()!)!)