import Foundation

func solution(_ n:Int, _ k:Int) -> [Int] {
    return Array(stride(from: k, through: n, by: k))
}