import Foundation

func solution(_ t:String, _ p:String) -> Int {
    guard let pValue = Int64(p) else { return 0 }
    
    var count = 0
    for i in 0...(t.count - p.count) {
        let startIndex = t.index(t.startIndex, offsetBy: i)
        let endIndex = t.index(startIndex, offsetBy: p.count)
        let subString = String(t[startIndex..<endIndex])
        
        if let subValue = Int64(subString), subValue <= pValue {
            count += 1
        }
    }
    return count
}