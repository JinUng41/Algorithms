import Foundation

func solution(_ myStr:String) -> [String] {
    let result = myStr.split { $0 == "a" || $0 == "b" || $0 == "c" }.map(String.init)
    return result.isEmpty ? ["EMPTY"] : result
}