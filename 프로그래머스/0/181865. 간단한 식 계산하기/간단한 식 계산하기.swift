import Foundation

func solution(_ binomial:String) -> Int {
    let arr = binomial.split(separator: " ").map(String.init)
    let a = Int(arr[0])!, b = Int(arr[2])!
    let op = arr[1]
    
    if op == "+" {
        return a + b
    }
    
    if op == "-" {
        return a - b
    }
    
    if op == "*" {
        return a * b
    }
    
    return 0
}