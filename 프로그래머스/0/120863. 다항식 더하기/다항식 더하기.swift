import Foundation

func solution(_ polynomial: String) -> String {
    let terms = polynomial.components(separatedBy: " + ")
    
    var xCoefficient = 0
    var constant = 0
    
    for term in terms {
        if term.contains("x") {
            if term == "x" {
                xCoefficient += 1
            } else {
                let coefficientString = term.replacingOccurrences(of: "x", with: "")
                xCoefficient += Int(coefficientString)!
            }
        } else {
            constant += Int(term)!
        }
    }
    
    var resultParts: [String] = []
    
    if xCoefficient > 0 {
        resultParts.append(xCoefficient == 1 ? "x" : "\(xCoefficient)x")
    }
    
    if constant > 0 {
        resultParts.append("\(constant)")
    }
    
    if resultParts.isEmpty {
        return "0"
    }
    
    return resultParts.joined(separator: " + ")
}