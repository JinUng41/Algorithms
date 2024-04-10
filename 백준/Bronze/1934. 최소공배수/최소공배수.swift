func BOJ_1934(_ T: Int) {
    func gcd(_ a: Int, _ b: Int) -> Int {
        if b == 0 { return a }
        return gcd(b, a % b)
    }
    func lcm(_ a: Int, _ b: Int) -> Int { return a * b / gcd(a, b) }
    var z = ""
    for _ in 0..<T {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        z += "\(lcm(input[0], input[1]))\n"
    }
    print(z)
}
BOJ_1934(Int(readLine()!)!)