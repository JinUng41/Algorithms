import Foundation

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    var chars = Array(my_string)
    queries.forEach {
        let (s, e) = ($0[0], $0[1])
        chars[s...e].reverse()
    }
    return String(chars)
}