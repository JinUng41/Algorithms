import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let patterns = [
        [1, 2, 3, 4, 5],
        [2, 1, 2, 3, 2, 4, 2, 5],
        [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    ]
    
    var scores = Array(repeating: 0, count: 3)
    for i in 0..<answers.count {
        for j in 0..<patterns.count {
            if answers[i] == patterns[j][i % patterns[j].count] {
                scores[j] += 1
            }
        }
    }
    
    let maxScore = scores.max()!
    var result = [Int]()
    for (index, value) in scores.enumerated() where value == maxScore {
        result.append(index + 1)
    }
    return result
}
