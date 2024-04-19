func BOJ_1429(_ M: Int, _ N: Int) {
    func isPrime(_ number: Int) -> Bool {
        if number == 1 { return false }
        if number <= 3 { return true }
        if number % 2 == 0 || number % 3 == 0 { return false }
        var i = 5
        while i * i <= number {
            if number % i == 0 || number % (i + 2) == 0 { return false }
            i += 6
        }
        return true
    }
    
    var result = ""
    for i in M...N {
        if isPrime(i) { result += "\(i)\n" }
    }
    print(result)
}
let MN = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_1429(MN[0], MN[1])