import Foundation

func solution(_ number:String) -> Int {
    if number.count < 20 { return Int(number)! % 9 }
    return number.map { Int(String($0))! }.reduce(0, +) % 9
}