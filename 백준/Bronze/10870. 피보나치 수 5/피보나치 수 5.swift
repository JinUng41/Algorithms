func BOJ_10870(_ N: Int) {
    func fibo(_ n: Int) -> Int {
        if n <= 1 { return n }
        return fibo(n-1) + fibo(n-2)
    }
    print(fibo(N))
}
BOJ_10870(Int(readLine()!)!)