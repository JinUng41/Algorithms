import Foundation

func solution(_ arr1:[Int], _ arr2:[Int]) -> Int {
    if arr1.count > arr2.count {
        return 1
    }
    
    if arr1.count < arr2.count {
        return -1
    }
    
    let arr1Sum = arr1.reduce(0, +), arr2Sum = arr2.reduce(0, +)
    
    if arr1Sum > arr2Sum {
        return 1
    }
    
    if arr1Sum < arr2Sum {
        return -1
    }
    
    return 0
}