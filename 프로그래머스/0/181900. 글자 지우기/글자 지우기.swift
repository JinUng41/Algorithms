import Foundation

func solution(_ my_string:String, _ indices:[Int]) -> String {
    let indicesToRemove = Set(indices)
    return String(my_string
        .enumerated()
        .filter { !indicesToRemove.contains($0.offset)}
        .map(\.element)
    )
}