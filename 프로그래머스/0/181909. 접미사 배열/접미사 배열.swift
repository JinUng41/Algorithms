import Foundation

func solution(_ my_string:String) -> [String] {
    var suffixes: [String] = []
    for i in 0..<my_string.count {
        let suffix = String(my_string.suffix(my_string.count - i))
        suffixes.append(suffix)
    }
    return suffixes.sorted()
}