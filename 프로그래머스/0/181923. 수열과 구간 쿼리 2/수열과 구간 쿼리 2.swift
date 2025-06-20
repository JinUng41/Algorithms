import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result = [Int]()
    for query in queries {
        let (s, e, k) = (query[0], query[1], query[2])
        var minNum = 1_000_001
        for i in s...e where arr[i] > k {
            minNum = min(minNum, arr[i])
        }
        if minNum == 1_000_001 { minNum = -1}
        result.append(minNum)
    }
    return result
}