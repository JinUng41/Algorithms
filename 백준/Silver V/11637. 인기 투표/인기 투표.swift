let t = Int(readLine()!)! // 테스트 케이스
for _ in 0..<t {
    let n = Int(readLine()!)! // 후보자 수
    var votes = [Int]() // 투표 내용 (번호, 투표수)
    var sum = 0 // 총 투표수
    var voteSet = Set<Int>()
    for _ in 1...n {
        let number = Int(readLine()!)!
        votes.append(number)
        sum += number
        voteSet.insert(number)
    }
    
    let maxNumber = voteSet.max()!
    let filter = votes.filter { $0 == maxNumber }
    
    if voteSet.count == 1 || filter.count != 1 { // 무승부
        print("no winner")
        continue
    }
    
    let index = votes.firstIndex { $0 == maxNumber }! + 1
    if Double(maxNumber) > Double(sum) / 2.0 {
        print("majority winner \(index)")
    } else {
        print("minority winner \(index)")
    }
}