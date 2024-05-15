import Foundation
func isPrime(_ num: Int) -> Bool {
    if num < 4 { return num == 1 ? false: true }
    for i in 2...Int(sqrt(Double(num))) + 1 {
        if num % i == 0 { return false }
    }
    return true
}
func BOJ_31216() -> [Int] {
    var primeCount = 0
    var superPrimes = [Int]()
    for i in 2...318137 {
        if isPrime(i) {
            primeCount += 1
            if isPrime(primeCount) { superPrimes.append(i) }
        }
    }
    return superPrimes
}
let superPrimes = BOJ_31216()
var result = ""
for _ in 0..<Int(readLine()!)! { result.append("\(superPrimes[Int(readLine()!)!-1])\n") }
print(result)