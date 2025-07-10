import Foundation

func solution(_ arr: [Int]) -> [Int] {
    var targetLength = 1
    while targetLength < arr.count {
        targetLength *= 2
    }
    
    var resizedArray = arr
    
    let zerosToAdd = targetLength - arr.count
    if zerosToAdd > 0 {
        resizedArray.append(contentsOf: Array(repeating: 0, count: zerosToAdd))
    }
    
    return resizedArray
}