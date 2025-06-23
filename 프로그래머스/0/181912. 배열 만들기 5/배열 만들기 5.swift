import Foundation

func solution(_ intStrs:[String], _ k:Int, _ s:Int, _ l:Int) -> [Int] {
    return intStrs.compactMap { str in
        let startIndex = str.index(str.startIndex, offsetBy: s)
        let endIndex = str.index(startIndex, offsetBy: l)
        let substring = String(str[startIndex..<endIndex])
        let num = Int(substring)!
        return num > k ? num : nil
    }
}