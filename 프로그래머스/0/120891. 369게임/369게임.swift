import Foundation

func solution(_ order:Int) -> Int {
    return "\(order)".filter { "369".contains($0) }.count
}