import Foundation

func solution(_ s:String) -> String {
    let counts = Dictionary(grouping: s, by: { $0 })
    let uniqueChars = counts.filter { $0.value.count == 1 }.keys
    return String(uniqueChars.sorted())
}