import Foundation

func solution(_ score: [[Int]]) -> [Int] {
    let averageScores = score.map { Double($0[0] + $0[1]) / 2.0 }
    var rankDictionary: [Double: Int] = [:]
    let sortedAverages = averageScores.sorted(by: >)
    for (index, score) in sortedAverages.enumerated() {
        if rankDictionary[score] == nil {
            rankDictionary[score] = index + 1
        }
    }
    return averageScores.map { rankDictionary[$0]! }
}