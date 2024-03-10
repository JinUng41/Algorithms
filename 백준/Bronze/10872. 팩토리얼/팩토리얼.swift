func factorial(_ n: Int) -> Int {
    if n == 0 || n == 1 { return 1 }
    else { return n * factorial(n - 1) }
}
func BOJ_15964() {
    print(factorial(Int(readLine()!)!))
}
BOJ_15964()