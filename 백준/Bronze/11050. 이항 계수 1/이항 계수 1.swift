func BOJ_11050(_ input: [Int]) {
    let N = input[0], K = input[1]
    func factorial(_ n: Int) -> Int {
        if n < 2 { return 1 }
        return n * factorial(n-1)
    }
    print(factorial(N) / (factorial(K) * factorial(N-K)))
}
BOJ_11050(readLine()!.split(separator: " ").map { Int($0)! })