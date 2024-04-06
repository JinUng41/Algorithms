func BOJ_11659(_ N: Int, _ M: Int) {
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }
    var prefixSum = Array(repeating: 0, count: N+1)
    for i in 1...N { prefixSum[i] = prefixSum[i-1] + numbers[i-1] }
    var result = ""
    for _ in 0..<M {
        let range = readLine()!.split(separator: " ").map{ Int($0)! }
        let i = range[0], j = range[1]
        result += "\(prefixSum[j] - prefixSum[i-1])\n"
    }
    print(result)
}
let input = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_11659(input[0], input[1])