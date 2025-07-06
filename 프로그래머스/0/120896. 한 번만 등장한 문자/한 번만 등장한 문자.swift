import Foundation

func solution(_ s: String) -> String {
    return String(Dictionary(grouping: s, by: { $0 }).filter { $0.value.count == 1 }.keys.sorted())
}