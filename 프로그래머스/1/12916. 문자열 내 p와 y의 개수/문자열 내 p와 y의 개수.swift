import Foundation

func solution(_ s:String) -> Bool {
    let lowercasedString = s.lowercased()
    return lowercasedString.filter { $0 == "p" }.count == lowercasedString.filter { $0 == "y" }.count
}