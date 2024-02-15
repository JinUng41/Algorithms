let t = Int(readLine()!)!
for _ in 0..<t {
    let n = Int(readLine()!)!
    var votes = [Int]()
    var voteSum = 0
    var count = 0
    for _ in 1...n {
        let number = Int(readLine()!)!
        votes.append(number)
        voteSum += number
    }
    let maxVote = votes.max()!
    for i in votes { if i == maxVote { count += 1 } }
    
    if count == 1 {
        let index = votes.firstIndex(of: maxVote)! + 1
        print(maxVote * 2 > voteSum ? "majority winner \(index)" : "minority winner \(index)")
    } else {
        print("no winner")
    }
}