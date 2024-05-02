func BOJ_10039() {
    var sum = 0
    for _ in 0..<5 {
        let score = Int(readLine()!)!
        sum += score < 40 ? 40 : score
    }
    print(sum/5)
}
BOJ_10039()