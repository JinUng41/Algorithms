import Foundation

func solution(_ order:Int) -> Int {
    let numbers: Set<Character> = ["3", "6", "9"]
    return Array(String(order)).filter { numbers.contains($0) }.count
}