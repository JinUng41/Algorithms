import Foundation

func solution(_ lines: [[Int]]) -> Int {
    var coordinateLine = Array(repeating: 0, count: 201)
    let offset = 100
    
    for line in lines {
        let start = line[0], end = line[1]
        for point in start..<end {
            coordinateLine[point + offset] += 1
        }
    }
    
    let overlapLength = coordinateLine.filter { $0 >= 2 }.count
    return overlapLength
}