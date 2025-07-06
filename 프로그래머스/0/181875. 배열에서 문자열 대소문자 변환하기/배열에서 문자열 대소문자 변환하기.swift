import Foundation

func solution(_ strArr:[String]) -> [String] {
    var arr = strArr
    for i in 0..<arr.count {
        arr[i] = i % 2 == 0 ? arr[i].lowercased() : arr[i].uppercased()
    }
    return arr
}