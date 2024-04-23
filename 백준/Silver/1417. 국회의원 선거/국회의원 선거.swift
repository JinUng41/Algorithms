func BOJ_1417(_ N: Int) {
    var dasom = Int(readLine()!)!, count = 0
    var votes = [Int]()
    for _ in 0..<N-1 { votes.append(Int(readLine()!)!) }
    if !votes.isEmpty {
        while let index = votes.firstIndex(of: votes.max()!),
              dasom <= votes[index] {
            votes[index] -= 1
            dasom += 1
            count += 1
        }
    }
    print(count)
}
BOJ_1417(Int(readLine()!)!)