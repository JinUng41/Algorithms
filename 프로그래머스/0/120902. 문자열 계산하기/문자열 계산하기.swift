import Foundation

func solution(_ my_string:String) -> Int {
    let components = my_string.split(separator: " ").map(String.init)
    var result = Int(components[0])!
    for i in stride(from: 1, to: components.count, by: 2) {
        let op = components[i]
        let nextNumber = Int(components[i+1])!
        
        if op == "+" {
            result += nextNumber
        } else {
            result -= nextNumber
        }
    }
    return result
}