let T = Int(readLine()!)!
var GCD = 0
var LCM = 0
for _ in 1...T {
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }
    for i in 1...numbers.max()! {
        guard numbers[0] % i == 0 && numbers[1] % i == 0 else { continue }
        GCD = i
        LCM = numbers[0] * numbers[1] / GCD
    }
    print("\(LCM) \(GCD)")
}