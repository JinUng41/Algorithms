import Foundation

func solution(_ a: String, _ b: String) -> String {
    let aDigits = Array(a)
    let bDigits = Array(b)
    
    var indexA = aDigits.count - 1
    var indexB = bDigits.count - 1
    
    var result: [String] = []
    var carry = 0
    
    while indexA >= 0 || indexB >= 0 || carry > 0 {
        let digitA = indexA >= 0 ? Int(String(aDigits[indexA]))! : 0
        let digitB = indexB >= 0 ? Int(String(bDigits[indexB]))! : 0
        
        let sum = digitA + digitB + carry
        
        carry = sum / 10
        let currentDigit = sum % 10
        result.append(String(currentDigit))
        
        indexA -= 1
        indexB -= 1
    }
    
    return result.reversed().joined()
}