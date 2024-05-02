func BOJ_10039() {
    var scores = [Int]()
    for _ in 0..<5 {
        let score = Int(readLine()!)!
        scores.append(score < 40 ? 40 : score)
    }
    let total = scores.reduce(0,+)
    print(total/5)
}
BOJ_10039()