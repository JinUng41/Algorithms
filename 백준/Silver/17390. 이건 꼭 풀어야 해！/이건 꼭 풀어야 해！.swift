func BOJ_17390(_ N: Int, _ Q: Int) {
    let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    var sum = Array(repeating: 0, count: N)
    sum[0] = arr[0]
    for i in 1..<N { sum[i] = sum[i-1]+arr[i] }
    var result = ""
    for _ in 0..<Q {
        let LR = readLine()!.split(separator: " ").map { Int($0)!-1 }
        let L = LR[0], R = LR[1]
        result += "\(L > 0 ? sum[R]-sum[L-1] : sum[R])\n"
    }
    print(result)
}
let NQ = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_17390(NQ[0], NQ[1])