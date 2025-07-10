import Foundation

func solution(_ my_str: String, _ n: Int) -> [String] {
    return stride(from: 0, to: my_str.count, by: n).map { startIndex in
        let start = my_str.index(my_str.startIndex, offsetBy: startIndex)
        let endOffset = min(startIndex + n, my_str.count)
        let end = my_str.index(my_str.startIndex, offsetBy: endOffset)
        return String(my_str[start..<end])
    }
}