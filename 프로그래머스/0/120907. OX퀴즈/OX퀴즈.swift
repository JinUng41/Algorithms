import Foundation

func solution(_ quiz:[String]) -> [String] {
    return quiz.map { query in
        let splitQuery = query.split(separator: " ")
        let x = Int(splitQuery[0])!, y = Int(splitQuery[2])!, z = Int(splitQuery[4])!
        let op = splitQuery[1]
        let result = op == "+" ? (x + y) : (x - y)
        return result == z ? "O" : "X"
    }
}