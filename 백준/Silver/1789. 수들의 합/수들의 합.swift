func BOJ_1789(_ N: Int) {
    var sum = 0, result = 0
    for i in 1...N+1 {
        sum += i
        result += 1
        if sum > N {
            result -= 1
            break
        }
    }
    print(result)
}
BOJ_1789(Int(readLine()!)!)