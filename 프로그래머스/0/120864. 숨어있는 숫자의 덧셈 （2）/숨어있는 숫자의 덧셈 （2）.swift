import Foundation

func solution(_ my_string: String) -> Int {
    return my_string.split { !$0.isNumber }.reduce(0) { $0 + Int($1)! }
}