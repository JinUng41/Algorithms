import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var tempArr = arr
    for query in queries { tempArr.swapAt(query[0], query[1]) }
    return tempArr
}