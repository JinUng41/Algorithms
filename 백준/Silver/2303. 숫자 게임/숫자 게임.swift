func BOJ_2303(_ N: Int) {
    var maxScore = 0, person = 0
    for i in 0..<N {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        var score = 0
        for j in 0..<5 {
            for k in j+1..<5 {
                for l in k+1..<5 {
                    score = max(score, (input[j]+input[k]+input[l])%10)
                }
            }
        }
        if maxScore <= score {
            person = i+1
            maxScore = score
        }
    }
    print(person)
}
BOJ_2303(Int(readLine()!)!)