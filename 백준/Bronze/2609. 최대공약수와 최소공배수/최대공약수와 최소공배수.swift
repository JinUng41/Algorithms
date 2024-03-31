func BOJ_2609(_ input: [Int]) {
    func gcd(_ a: Int, _ b: Int) -> Int {
        if b == 0 { return a }
        return gcd(b, a % b)
    }
    func lcm(_ a: Int, _ b: Int) -> Int { return a * b / gcd(a, b) }
    let a = input[0], b = input[1]
    print(gcd(a, b))
    print(lcm(a, b))
}
BOJ_2609(readLine()!.split(separator: " ").map{ Int($0)! })