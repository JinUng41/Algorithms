import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var tempArr = arr
    queries.forEach {
        let (s, e, k) = ($0[0], $0[1], $0[2])
        for i in s...e where i % k == 0 { tempArr[i] += 1 }
    }
    return tempArr
}