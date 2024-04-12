func BOJ_13241(_ A: Int, _ B: Int) {
    func gcd(_ a: Int, _ b: Int) -> Int {
        if b == 0 { return a }
        return gcd(b, a % b)
    }
    func lcm(_ a: Int, _ b: Int) -> Int { return a * b / gcd(a, b) }
    print(lcm(A, B))
}
let AB = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_13241(AB[0], AB[1])