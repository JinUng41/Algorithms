func BOJ_16112(_ n: Int, _ k: Int, _ numbers: [Int]) {
    let quests = numbers.sorted()
    var stones = Array(repeating: 0, count: n + 1)
    var total = 0
    for i in 1..<n {
        let temp = i - k
        total += (i - (temp < 0 ? 0 : temp))*quests[i]
    }
    print(total)
}
let nk = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_16112(nk[0], nk[1], readLine()!.split(separator: " ").map { Int($0)! })